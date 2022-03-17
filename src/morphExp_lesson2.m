

clear all, %close all

% ------------- primeiro exemplo, detecção da mioleira  ----------------- %

img = imread('BrainMRI_Axial.jpg');
imshow(img); title('Original');
imgg = rgb2gray(img);
%figure,imhist(imgg);

BW = imgg>60;
figure,imshow(BW);title('Original BW');
se = strel('disk',3);   % variar este constante !!!
%se = strel('line',3);   % variar para 'square', 'line', 'disk', 'ball' 
%se = strel('square',3); % variar para 'square', 'line', 'disk', 'ball' 
%se = strel('ball',3);   % variar para 'square', 'line', 'disk', 'ball' 

BW1 = imerode(BW,se);
figure,imshow(BW1);title('Erosão');

BW2 = imdilate(BW,se);
figure,imshow(BW2),title('Dilatação');

BW3 = imopen(BW,se);
figure,imshow(BW3),title('Abertura');

%Mais um exemplo ...
%BW4 = imclose(BW,se);
%figure,imshow(BW4),title('Fecho');

[lb num]= bwlabel(BW3); %estava BW3
figure,imshow(mat2gray(lb));title('Etiquetas');
stats = regionprops(lb);
areas = [stats.Area];
[dummy indM] = max(areas);
imgBr = (lb == indM);
figure,imshow(imgBr);title('Maior área');
figure,imshow(imgg.*uint8(imgBr));title('Cérebro');

% ------------------------ segundo exemplo ----------------------------- %

img = imread('rabbitBW.jpg');
imshow(img); title('Original');
figure, hold on,
imshow(img);
se = strel('disk',3);
for k = 1 : 20
    k
    img = imerode(img,se);
    imshow(img); drawnow
    pause(.2)
end

% ------------------------ terceiro exemplo ----------------------------- %

img = imread('rabbitBW.jpg');
imshow(img); title('Original');
figure, hold on,
imshow(img);
se = strel('disk',3);
for k = 1 : 50
    img = imdilate(img,se);
    imshow(img); drawnow
    pause(.2)
end



