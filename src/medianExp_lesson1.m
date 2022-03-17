
clear all,

% imgg = imread('veiculoGray.jpg');
% 
% imageN = imnoise(imgg,'salt & pepper',0.02);
% figure;imshow(imageN);
% imageF2 = medfilt2(imageN);
% figure, imshow(imageF2);

% another example %





imgg = imread('eight.tif');
figure,imshow(imgg);

% 1st method using "median"
imageN = imnoise(imgg,'salt & pepper',0.02);
figure,imshow(imageN);
imageF2 = medfilt2(imageN);
figure, imshow(imageF2);

% 2nd method using "mean" 
K = filter2(fspecial('average',3),imageN)/255;
figure,imshow(K)


