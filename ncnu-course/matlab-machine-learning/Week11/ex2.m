% Step 1: load trainning data and test
clear
load('usps_all');
reduce_dim = false;
X = double(reshape(data,256,11000)');
ylabel = [1:9 0];
y = reshape(repmat(ylabel,1100,1),11000,1);
clearvars data

% Step 2: Visualize Random Handwrittend samples
figure(1)
for ii = 1:6
    subplot(2,3,ii)
    rand_num = randperm(11000,1);
    image(reshape(X(rand_num,:),16,16)) %making a sample be 16x16 to be a image
    title((y(rand_num)),'FontSize',20)
    axis off
end
colormap gray

% Step 3: randomly partition the data into training and validation sets
cv = cvpartition(y, 'holdout', .5);
% partition y into two part, 0.5 is the proportion of test data

Xtrain = X(cv.training,:);
Ytrain = y(cv.training,1);

Xtest = X(cv.test,:);
Ytest = y(cv.test,1);

% Step 4: Train and Predict using a single Classification Tree
mdl_ctree = ClassificationTree.fit(Xtrain,Ytrain); % function of single classification tree
ypred = predict(mdl_ctree,Xtest);
Confmat_ctree = confusionmat(Ytest,ypred);

% Step 5: Train and Predict using bagged dicision Trees
% function of bagged decision trees
mdl50 = fitensemble(Xtrain,Ytrain,'bag',50,'tree','type','Classification');
mdl100 = fitensemble(Xtrain,Ytrain,'bag',100,'tree','type','Classification');
mdl500 = fitensemble(Xtrain,Ytrain,'bag',500,'tree','type','Classification');

ypred50 = predict(mdl50,Xtest);
ypred100 = predict(mdl100,Xtest);
ypred500 = predict(mdl500,Xtest);

Confmat_bag50 = confusionmat(Ytest,ypred50);
Confmat_bag100 = confusionmat(Ytest,ypred100);
Confmat_bag500 = confusionmat(Ytest,ypred500);

% Step 6: Compare
figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_ctree);
title('Confusion Matrix: Single Classification Tree')

figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_bag50);
title('Confusion Matrix: Ensemble of Bagged Classification Trees with using 50 bagging')

figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_bag100);
title('Confusion Matrix: Ensemble of Bagged Classification Trees with using 100 bagging')

figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_bag500);
title('Confusion Matrix: Ensemble of Bagged Classification Trees with using 500 bagging')