
clear all, close all
img = imread('lena512.bmp');
imgN = imnoise(img,'gaussian',0,0.05);

%K = imfilter(image,fspecial('gaussian',11,1));
%K = imfilter(image,fspecial('average',3));
K = medfilt2(imgN,[3 3]);

figure, 
subplot(2,2,1); imshow(img);
subplot(2,2,2); imshow(imgN);
subplot(2,2,3); imshow(K);

I_dif = abs(img - K);
figure; imagesc(img-K); 

% ----------- este é mto mais giro ! ------------- %
% The goal is toincreas the parameter of "imnoise"  function
% introduce the vaule of "0.95"

img = imread('lena512.bmp');

imgN = imnoise(img,'salt & pepper',.05);

%-----------metodo1
%K = imfilter(image,fspecial('gaussian',11,1));
K1 = imfilter(imgN,fspecial('average',3));

%-----------metodo2
K2 = medfilt2(imgN,[3 3]);

figure, 
subplot(2,2,1); imshow(img);  title('Original (clean) image')
subplot(2,2,2); imshow(imgN); title('Noisy image')
subplot(2,2,3); imshow(K1);   title('Denoising using mean filter')
subplot(2,2,4); imshow(K2);   title('Denoising using median filter')



% NOTA : fazer o mesh de f = fspecial('gaussian',11,1)
% para varios valores de sigma !!