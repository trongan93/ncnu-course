% Question 1
A = [1 5 -8 6; -2 9 10 2; 6 13 8 11];
X = [sum(A(1,:)) sum(A(2,:)) sum(A(3,:))];
Y = [sum(A(:,1)); sum(A(:,4))];
Z = [norm(A(:,1)) norm(A(:,2)) norm(A(:,3)) norm(A(:,4))];

% Question 2
A = randn(8,6);
B = rand(8,6);
AB_T = A*B';
BA_T = B*A';
C = A./B;
D = A.^(B+0.5);

% Question 3
t = 0:0.1:3;
f1 = 2*sin(2*pi*t) + 3*cos(4*pi*t);
plot(t,f1,'r')
hold on
f2 = exp(j*2*pi*t + 0.2*pi)
plot(t,f2,'g')
hold on
f3 = 2*exp((-0.5+j*2*pi)*t)
plot(t,f3,'b')
hold off

% Question 4
a1 = [2 0 -3 -3 5]
a2 = [1 -2 -6 4]
a = conv(a1,a2)

b1 = [7 0 -6 2]
b2 = [2 0 -1 -3 5]
b = conv(b1,b2)

% Question 5
x = -2:0.1:2
y = 2*x.^4 - 6*x.^3 + 4*x.^2 + 5*x + 10
plot(x,y,'b')
hold on
z = 3 + 5*x - 8*x.^2 + 2*x.^3
plot(x,z,'r')
legend('y','z')
hold off




