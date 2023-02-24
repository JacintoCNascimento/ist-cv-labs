
clear all, close all,

% 1st example using 
% noise   -> Salt & pepper
% denoise -> median filter
img = imread('veiculoGray.jpg');

imageN = imnoise(img,'salt & pepper',0.09);
figure;imshow(imageN);
imageF2 = medfilt2(imageN);
figure, imshow(imageF2);

% 2nd example using
% noise   -> Salt & pepper
% denoise -> median filter
img = imread('eight.tif');
figure,imshow(img);

imageN = imnoise(img,'salt & pepper',0.2);
figure,imshow(imageN);
imageF2 = medfilt2(imageN);
figure, imshow(imageF2);

% 2nd example using
% denoise -> mean filter
K = filter2(fspecial('average',3),imageN)/255;
figure,imshow(K)


