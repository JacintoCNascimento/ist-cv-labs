
clear all, 

% reshape
% A(1:2:length(A))
% A(:)
% replica
% multilicação pnto a ponto
% find


% -------------------------- example 1 -----------------------------------
for i = 1 : 3
    for j = 1 : 3
        A(i,j) = 0;
    end
end

A = zeros(1,3);
A = zeros(3,1);
A = zeros(3,3)

A = [1 2 3; 4 5 6; 7 8 9] 


% -------------------------- example 1 -----------------------------------
% matrix fliping 

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

A = flipud(A);

% -------------------------- example 1 -----------------------------------
% Thresholding an image 

% ----------- method 1
A = [ 1  6  2 6  87 
     32 45 78 8  76
     34 23 6  3  898 ];
 
 T = 75;
 
 [L, C] = size(A);
 
 for i = 1 : L
     for j = 1 : C
         if A(i,j) > T
             A(i,j) = 0;
         end
     end
 end
 A
 
 % ---------- method 2
 A = [ 1  6  2 6  87 
     32 45 78 8  76
     34 23 6  3  898 ];
 
 A(find(A>T))=0
 
 % ---------------------- example 2 ----------------------------------------
 % obtaining a matrix diagonal
 
  A = [ 1  6  2 6 
     32 45 78 8  
     34 23 6  3  
     2 4 76 1 ];
 
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

             
 