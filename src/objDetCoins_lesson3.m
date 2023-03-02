clear all, close all;

thr = 200;
minArea = 20;

imgg = imread('eight.tif');
figure,imshow(imgg);

se = strel('disk',3);
bw1 = imgg < 200;
figure, imshow(bw1);

bw2 = imclose(bw1,se);
figure;imshow(bw2);

bw2 = bw1;

[lb num]=bwlabel(bw2);
regionProps = regionprops(lb,'area','FilledImage','Centroid');
inds = find([regionProps.Area]>minArea);

figure;  
imshow(bw2); hold on
for i=1:length(inds)
     [lin col]= find(lb == inds(i));
    upLPoint = min([lin col]);
    dWindow  = max([lin col]) - upLPoint + 1;
    
    rectangle('Position',[fliplr(upLPoint) fliplr(dWindow)],'EdgeColor',[1 1 0],...
                'linewidth',2);
    plot(regionProps(inds(i)).Centroid(1),regionProps(inds(i)).Centroid(2),...
        'g.','markersize',20)
end
N = length(inds)
str1  = sprintf('%s%d','The number of objecs is ... ',N)

%figure,imshow(regionProps(inds(i)).FilledImage);
%props = regionprops(double(regionProps(inds(i)).FilledImage),'Orientation','MajorAxisLength','MinorAxisLength');

%ellipse(props.MajorAxisLength/2,props.MinorAxisLength/2,-props.Orientation*pi/180,...
%    regionProps(inds(i)).Centroid(1),regionProps(inds(i)).Centroid(2),'r');
    


