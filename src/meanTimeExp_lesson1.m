
clear all, close all

imgg = imread('veiculoGray.jpg');

N=10;

for i=1:N
    i
    % noise = round(randn(size(imgg))*div);
    % imshow(mat2gray(noise));
    % image(:,:,i)=max(min(imgg+uint8(noise),255),0);
    %image(:,:,i)=imnoise(imgg,'gaussian',0,0.08);
    image(:,:,i)=imnoise(imgg,'salt & pepper',0.15);
    
    imshow(image(:,:,i));
    pause
end

denoise_mean = mean(image,3);
denoise_median = median(image,3);

figure;  
subplot(1,2,1); imagesc(denoise_mean);colormap gray
subplot(1,2,2); imagesc(denoise_median);colormap gray

pause

%denoiseImg = (sum((image),3)/N);
%figure;imagesc(denoise_mean);colormap gray

% também dá fazendo:

denoiseImg = uint8(sum(double(image),3)/N);
figure,imshow(denoiseImg);

% também dá fazendo:

denoiseImg1 = sum(image,3)/N;
figure, imagesc(denoiseImg1); colormap gray
