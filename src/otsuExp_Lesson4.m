
close all, clear all

img = imread('..\..\database\rabbit.jpg');  %bom exemplo
%img = imread('..\..\database\cherry.bmp');  %bom exemplo
%img = imread('..\..\database\textsheet.jpg');
%img = imread('..\..\database\airplane.jpg');
%img = imread('..\..\database\x-ray2.jpg');
img = imread('D:\CVI\MATERIAL\database\moedas1.jpg');


%imgrgb = imread('x-ray.jpg');
%img = rgb2gray(imgrgb);

figure(1),imshow(img);
figure(2),imhist(img); hold on

thr = graythresh(img)*255
%plot([thr thr],[0 50],'r.','markersize',40);
plot([thr thr],[0 400],'r','linewidth',2);
bw = img>thr;
figure(3),imshow(bw);

%pause
% Also, perform the following experiments
% The ranhe of the folloing threshods include the optinal Otsu Thr

thr1 = 200;
thr2 =  50;

bw1 = img > thr1;
figure(4),imshow(bw1);

bw2 = img > thr2;
figure(5),imshow(bw2);

% --------- Jan version ------- %
% Visualização das 
% campo 'ConvexHull' —> é uma matriz p-by-2 que especifica o poligono convexo mais pequeno 
% que contem a região. Cada linha da matriz contem as coordenada x-y do poligono 

Acc_poligono = zeros(size(img));
aux          = zeros(size(img));

[lb num]=bwlabel(bw);
hold on
props = regionprops(lb,'Area','ConvexHull','BoundingBox');

figure(11)
subplot(1,2,1);
imagesc(img); colormap gray

for i=1:num
    i
    poligono     = roipoly(aux,props(i).ConvexHull(:,1),props(i).ConvexHull(:,2));
    Acc_poligono = Acc_poligono + poligono;
    figure(11)
    subplot(1,2,2); 
    imagesc(Acc_poligono); axis off
    subplot(1,2,1); 
    rectangle('Position',props(i).BoundingBox,'EdgeColor','r','linewidth',2);axis off
    drawnow
end

   %figure(9),imshow(img)
    %rectangle('Position',props(i).BoundingBox,'EdgeColor','r','linewidth',2);
    %figure(10);
    %imagesc(Acc_poligono); axis off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

% 
% [lb num]=bwlabel(bw);
% hold on
% props = regionprops(lb,'Area','ConvexHull','BoundingBox');
% for i=1:-num
%     rectangle('Position',props(i).BoundingBox,'EdgeColor','r');
%     thisConvex = props(i).ConvexHull;
%     for j=1:length(thisConvex)-1
%         plot(thisConvex(j,1),thisConvex(j,2),...
%             thisConvex(j+1,1),thisConvex(j+1,2),'g');
%     end
%     plot(thisConvex(end,:),thisConvex(1,:),'g');
% end
