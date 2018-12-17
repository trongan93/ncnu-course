clear
           
N = 1000;
X = 2*(rand(N, 3)-0.5);
D = 1*([exp(X(:,1)) + 2*exp(X(:,2)) + X(:,3)]>3);
      
W1 = 2*rand(5, 3) - 1;
W2 = 2*rand(1, 5) - 1;
W3 = 2*rand(5, 3) - 1;
W4 = 2*rand(1, 5) - 1;
W5 = 2*rand(5, 3) - 1;
W6 = 2*rand(1, 5) - 1;

E_F1 = [];
E_F2 = [];
E_F3 = [];
P_F1 = [];
P_F2 = [];
P_F3 = [];

for epoch = 1:1000           % train
%     [W1 W2] = Backprop_SGD(W1, W2, X, D);
%     [W1 W2] = Backprop_batch(W1,W2,X,D);
%     [W1 W2] = Backprop_mini_batch(W1,W2,X,D);
    [W1 W2] = Backprop_SGD(W1, W2, X, D, 0); %basic error
    [W3 W4] = Backprop_SGD(W3, W4, X, D, 1); %square_error
    [W5 W6] = Backprop_SGD(W5, W6, X, D, 2); % etropy
    

    V1 = W1*X';
    Y1 = Sigmoid(V1);
    V_F1 = W2*Y1;
    Y_F1 = Sigmoid(V_F1);
    E_F1 =[E_F1 norm(Y_F1-D')^2];
    P_F1 = [P_F1 sum((Y_F1>0.5)~=D')]; 
    
    V2 = W3*X';
    Y2 = Sigmoid(V2);
    V_F2 = W4*Y2;
    Y_F2 = Sigmoid(V_F2);
    E_F2 =[E_F2 norm(Y_F2-D')^2];
    P_F2 = [P_F2 sum((Y_F2>0.5)~=D')];
    
    V3 = W5*X';
    Y3 = Sigmoid(V3);
    V_F3 = W6*Y3;
    Y_F3 = Sigmoid(V_F3);
    E_F3 =[E_F3 norm(Y_F3-D')^2];
    P_F3 = [P_F3 sum((Y_F3>0.5)~=D')];
    
end
figure(1)
hold on 
plot(E_F1,'g')
hold on 
plot(E_F2,'r');
hold on
plot(E_F3, 'b');
hold off
figure(2)
hold on
plot(P_F1, 'g')
hold on
plot(P_F2, 'r');
hold on
plot(P_F3, 'b');