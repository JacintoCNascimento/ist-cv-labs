

clear all, close all

imgg = imread('veiculoGray.jpg');

figure;
imagesc(imgg); colormap gray


imageN = imnoise(imgg,'gaussian',0,0.02);

figure;
imshow(imageN);

% ---------------
h = fspecial('average');
imageF = imfilter(imageN,h);
figure;
imshow(imageF);
% -----------------

N = 20;
h = fspecial('average',N);
imageF_original = imfilter(imgg,h);
figure;
imshow(imageF_original);






