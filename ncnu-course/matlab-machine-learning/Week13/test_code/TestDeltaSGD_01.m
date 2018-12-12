W = 2*rand(1,3)-1;
E = [];
P = [];
for epoch = 1:100 %train
    W = DeltaSGD(W,X,D);
    V = W*X';
    Y = Sigmoid(V);
    E = [E norm(Y-D')^2];
    P = [P sum((Y>0.5) ~= D')];
end
figure(1),plot(E);
figure(2),plot(P);
