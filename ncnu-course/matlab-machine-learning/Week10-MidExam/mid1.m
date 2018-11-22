A = [3, 1, -7, 5; -2, 3, 9, -3; 1, 6, 1, -2; 0, -3, 7, -1];
% part a
a1 = mean(A(1,:));
a3 = mean(A(3,:));
a4 = mean(A(4,:));

% part b
[V,D] = eig(A);

% part c
non_negative = A >= 0;
negative = A < 0;
A_negative = A .* negative .* (-2);
A_non_negative = A .* non_negative;
B = A_negative + A_non_negative
