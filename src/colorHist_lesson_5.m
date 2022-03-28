

% Diferença de histogramas de imagens a cores,
% como medida de (de)semelhança 

clear all,

myPath = 'D:\CVI\JanPIV\teoricas\demos\database\';

N = 100; % Histograma de côr com 100 bins 

img1 = imread(strcat(myPath,'ped7c1352.tif'));
figure,
subplot(2,3,1);imshow(img1);
[nlin ncol dummy]=size(img1);
npixels = nlin*ncol;
hr = imhist(img1(:,:,1),N)/npixels;  
hg = imhist(img1(:,:,2),N)/npixels;
hb = imhist(img1(:,:,3),N)/npixels;
H1 = [hr' hg' hb'];
subplot(2,3,4),bar(H1);

img2 = imread(strcat(myPath,'ped7c1350.tif'));
subplot(2,3,2);imshow(img2);
[nlin ncol dummy]=size(img2);
npixels = nlin*ncol;
hr = imhist(img2(:,:,1),N)/npixels;
hg = imhist(img2(:,:,2),N)/npixels;
hb = imhist(img2(:,:,3),N)/npixels;
H2 = [hr' hg' hb'];
subplot(2,3,5),bar(H2);

img3 = imread(strcat(myPath,'Tiger2.jpg'));
subplot(2,3,3),imshow(img3);
[nlin ncol dummy]=size(img3);
npixels = nlin*ncol;
hr = imhist(img3(:,:,1),N)/npixels;
hg = imhist(img3(:,:,2),N)/npixels;
hb = imhist(img3(:,:,3),N)/npixels;
H3 = [hr' hg' hb'];
subplot(2,3,6),bar(H3);

d12 = sum(abs(H1-H2))/length(H1)
d13 = sum(abs(H1-H3))/length(H1)


% -------------------------------
