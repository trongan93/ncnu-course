% Part 2 - Problem 1
A = [1 0 2; -5 -1 9; -7 6 -2]

% Part 2--pb1-2
B = zeros(size(A))
b1_check = abs(A) < 2
% b1_withZero = (b1_check .* A)
B(b1_check~=0)=(A(b1_check~=0)+4)

b2_1_check = abs(A) >= 2
b2_2check = abs(A) <6
b2_check = b2_1_check == b2_2check
% b2_withZero = (b2_check .*A)
B(b2_check~=0)=exp(A(b2_check~=0))

b3_check = abs(A) >=6
% b3_withZero = (b3_check .*A)
B(b3_check~=0) = log(abs(A(b3_check~=0))+1)

% Part 2--pp1-1
sizeA = size(A)
B2 = zeros(sizeA)
for i = 1:sizeA(1)
    for j = 1:sizeA(2)
        if abs(A(i,j)) < 2
            B2(i,j) = A(i,j)+4
        elseif (abs(A(i,j)) >= 2) && (abs(A(i,j)) < 6)
            B2(i,j) = exp(A(i,j))
        else
            B2(i,j) = log(abs(A(i,j)) + 1)
        end
    end
end

logicalCompare2Way = (B == B2)


