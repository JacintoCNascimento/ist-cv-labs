

% -----------  Example 5 ---------------- %
% Generating a matrix of random numbers
A = rand(3,4)


% -----------  Example 6 ---------------- %
% In the matrix B, find the elements larger than 30, and replece them by -1 

B = [ 2 4 6 8 9; 7 8 34 6 23 ; 3 5 78 4 2]

% a C/C++ based solution

[L C] = size(B);

for i = 1 : L
    for j = 1 : C
        if B(i,j) > 30
            B(i,j) = -1
        end
    end
end
B

% A matlab/Python solution

B = [ 2 4 6 8 9; 7 8 34 6 23 ; 3 5 78 4 2];

B(find(B>30))=-1


% -----------  Example 7 ---------------- %
% Given two matrices B and D,compute a element wis division of B by D
B = [ 2 4 6 8 9; 7 8 34 6 23 ; 3 5 78 4 2];
D = [3 46 8 2 13; 1 54 18 43 55; 12 2 56 8 2]

% A C/C++ based solution
[L C] = size(D);

for i = 1 : L
    for j = 1 : C
        R(i,j) = B(i,j)/D(i,j);
    end
end
R

% A matlab/Python solution
R1 = B./D

% -----------  Example 8 ---------------- %
% Changing the shape of a given vector/array
F = [1 2 3 4; 5 6 7 8; 9 10 11 12]
F(:)
reshape(F,12,1)
reshape(F,1,12)
reshape(F,4,3)


% -----------  Example 9 ---------------- %
%Quick access to the contens of an array (G) and a matrix (I)
G = [2 45 2 5 7 5 2 2 5 89 5 32 ]
G(1:end)
G(1:2:end)
G(1:4:end)

I = [1 2 3 4 5; 6 7 8 9 10; 11 12 14 14 15];

I(1,:)
I(:,1)
I(2,:)
I(:,2)

% -----------  Example 10 ---------------- %
% Given a matrix H, build a new matrix H_inv, that contains the lines in
% the reverse order

H = [1 2 3 4 5; 6 7 8 9 10; 11 12 13 14 15] 

H_inv = [];

% a C/C++ based solution
[L C] = size(H) 
for i = 1 : L
    k = L-i+1;
    H_inv(k,:) = H(i,:);
end
H_inv

% A matlab/Python solution
H1 = flipud(H)
% see also the function "fliplr.m"

% -----------  Example 11 ---------------- %
% construct black image with a white square

I = zeros(100,100);

% A c/C++ based solution
for L = 40:50
    for C = 40: 50
        I(L,C) = 1;
    end
end

% A matlab/Python solution
I(40:50,40:50) = 1;
figure;imagesc(I); colormap('gray');


% -----------  Example 12 ---------------- %
% construct a chess table 

One  = ones(30);
Zero = zeros(30);

Line1 = [  One Zero One Zero One Zero ];
Line2 = [ Zero  One Zero One Zero One ];

Chess  = [Line1; Line2; Line1; Line2];

figure; 
imagesc(Chess); colormap gray; hold on



        
    
    



