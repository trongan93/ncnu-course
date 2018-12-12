% Step 1: load trainning data and test
clear
load('usps_all');
reduce_dim = false;
X = double(reshape(data,256,11000)');
ylabel = [1:9 0];
y = reshape(repmat(ylabel,1100,1),11000,1);
clearvars data

% % Step 2: Visualize Random Handwrittend samples
% figure(1)
% for ii = 1:6
%     subplot(2,3,ii)
%     rand_num = randperm(11000,1);
%     image(reshape(X(rand_num,:),16,16)) %making a sample be 16x16 to be a image
%     title((y(rand_num)),'FontSize',20)
%     axis off
% end
% colormap gray

% Step 3: randomly partition the data into training and validation sets
cv02 = cvpartition(y, 'holdout', .2); % proportion is 0.2
cv06 = cvpartition(y, 'holdout', .6); % proportion is 0.6
cv08 = cvpartition(y, 'holdout', .8); % proportion is 0.8

Xtrain02 = X(cv02.training,:);
Ytrain02 = y(cv02.training,1);
Xtrain06 = X(cv06.training,:);
Ytrain06 = y(cv06.training,1);
Xtrain08 = X(cv08.training,:);
Ytrain08 = y(cv08.training,1);

Xtest02 = X(cv02.test,:);
Ytest02 = y(cv02.test,1);
Xtest06 = X(cv06.test,:);
Ytest06 = y(cv06.test,1);
Xtest08 = X(cv08.test,:);
Ytest08 = y(cv08.test,1);


% Step 4: Train and Predict using a single Classification Tree
mdl_ctree02 = ClassificationTree.fit(Xtrain02,Ytrain02); % function of single classification tree
ypred02 = predict(mdl_ctree02,Xtest02);
Confmat_ctree02 = confusionmat(Ytest02,ypred02);

mdl_ctree06 = ClassificationTree.fit(Xtrain06,Ytrain06); % function of single classification tree
ypred06 = predict(mdl_ctree06,Xtest06);
Confmat_ctree06 = confusionmat(Ytest06,ypred06);

mdl_ctree08 = ClassificationTree.fit(Xtrain08,Ytrain08); % function of single classification tree
ypred08 = predict(mdl_ctree08,Xtest08);
Confmat_ctree08 = confusionmat(Ytest08,ypred08);

% Step 5: Train and Predict using bagged dicision Trees
% function of bagged decision trees
mdl02 = fitensemble(Xtrain02,Ytrain02,'bag',200,'tree','type','Classification');
mdl06 = fitensemble(Xtrain06,Ytrain06,'bag',200,'tree','type','Classification');
mdl08 = fitensemble(Xtrain08,Ytrain08,'bag',200,'tree','type','Classification');


ypred02 = predict(mdl02,Xtest02);
ypred06 = predict(mdl06,Xtest06);
ypred08 = predict(mdl08,Xtest08);


Confmat_bag02 = confusionmat(Ytest02,ypred02);
Confmat_bag06 = confusionmat(Ytest06,ypred06);
Confmat_bag08 = confusionmat(Ytest08,ypred08);

% Step 6: Compare
figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_ctree02);
title('Confusion Matrix: Single Classification Tree with proportion is 0.2')

figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_bag02);
title('Confusion Matrix: Ensemble of Bagged Classification Trees with proportion is 0.2')

figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_ctree06);
title('Confusion Matrix: Single Classification Tree with proportion is 0.6')

figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_bag06);
title('Confusion Matrix: Ensemble of Bagged Classification Trees with proportion is 0.6')

figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_ctree08);
title('Confusion Matrix: Single Classification Tree with proportion is 0.8')

figure,
heatmap(num2cell(0:9),num2cell(0:9),Confmat_bag08);
title('Confusion Matrix: Ensemble of Bagged Classification Trees with proportion is 0.8')