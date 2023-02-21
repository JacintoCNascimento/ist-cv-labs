
clear all,  % clean all the variables in the working space

clear A,    % cleans the variable  "A"

whos        % it allows t sse the variablesin use inthe working space



% -------------------------------------------------
%                       gitub
% https://github.com/JacintoCNascimento/ist-cv-labs
%
% -------------------------------------------------

% -----example - acessing the contents of an array -----------------

A = [1 4 1 6 9 56 ];

A(0)
A(3)
A(end)
A(length(A))

[L C] = size(A)

A(C)

% ------example two different way to write the same array ------------
A1 = [1 2 3; 4 5 6]

A2 = [ 1 2 3
       4 5 6 ]

% ----example - initialization of an array/matrix with zeros ----------

% C based code
for i = 1 : 3
    for j = 1 : 3
        A(i,j) = 0;
    end
end

% Matlab based code
A = zeros(1,3);
A = zeros(3,1);
A = zeros(3,3)

% this is for square matrices
A1 = zeros(3)   
A2 = zeros(3,3)

% for non-squared matrices
A3 = zeros(3,2);

% ---- example - filing automatically an array/matrix with a given value

A= ones(3,3)
A = 5* ones(3,4)


% C - based code
L = 2; C = 5; k = 1;
for i = 1 : L
    for j = 1 : C 
        A(i,j) = k;
        k=k+1
    end
    k = k*k;
end


% Matlab - based code
A(1,:) = [1 : 5]
A(2,:) = [36 : 40]

% alternatives in Matlab based code for the exampe above
A(1,:) = [1:5]
A(2,:) = 35 + [1:5]

A(1,:) = [1:5]
A(2,:) = 35 + A(1,:)


% - example -access the contents of an array-------------------------

step = 2;
A = [1: 10]
A(1:step:A(end))





% --- example - reshaping the size of an array/matrix ---------------

A = [1 2 3 4; 5 6 7 8]

[L C] = size(A)

A(:)

A(:)'

B1 = reshape(A,1,8)
B2 = reshape(A,8,1)
B3 = reshape(A,4,2)


% --- example - seeking for a value in an array/matrix -------------

%C - based code
A = [ 21 6 2 54 8];

val = 54; i = 1;
for k = 1 : length(A)
    if (A(k) == val)
        return;
    end
    i = i+1;
end


% matlab based code
A = [ 21 6 2 54 8]; val = 54;
[num, valor] = find(A==val)

val = 54; i = 1;
for k = 1 : length(A)
    if (A(k) == val)
        return;
    end
end



% ---example - flipping a matrix strucure (linewise) ----------

A = [1 1 1 1 1; 2 2 2 2 2; 3 3 3 3 3; 4 4 4 4 4; 5 5 5 5 5]

[L C] = size(A); 
j = L;
for i = 1 : L
    if i <= j
        aux = A(j,:);
        A(j,:) = A(i,:)
        A(i,:) = aux
        j = j-1;
    end
end

% Matlab based code

A = flipud(A);

% ---- example --  Thresholding an image ----------------
 

% ----------- method 1
A = [ 1  6  2 6   87 
     32 45 78 8   76
     34 23  6 3  898 ];
 
 T = 75;
 
 %C based code
 [L, C] = size(A);
 
 for i = 1 : L
     for j = 1 : C
         if A(i,j) > T
             A(i,j) = 0;
         end
     end
 end
 A
 
 % Matlab based code
 A = [ 1  6  2 6  87 
     32 45 78 8  76
     34 23 6  3  898 ];
 
 A(find(A>T))=0;
 
 
 
 
% -- example  -----Extract the diagonal of a matrix

 
 A = [ 1  6  2  6
      32 45 78  8
      34 23  6  3
      2   4 76  1 ];
 
 % C based code
 [L, C] = size(A);
 
 D = [];
 for i = 1 : L
     for j = 1 : C
         if i == j
             D = [ D A(i,j)];
         end
     end
 end
 D
 
 % Matlab based code
 
 D = diag(A)
 
 % -- exercise generate the folowing structure for ten matrix A
 
   A = [1     2     3     4     5
        1     2     3     4     5
        1     2     3     4     5
        1     2     3     4     5
        1     2     3     4     5 ];
     
        
 repmat([1:5],5,1)
 
 % ---- example --- with images
 
 I = imread('D:\CVI\JanPIV\teoricas\demos\matlab\cap2\veiculoGray.jpg');

 figure; imshow(I);
 
 figure; imshow(I');
 
 figure; imshow(repmat(I,2,2));
 
 
 

             
 