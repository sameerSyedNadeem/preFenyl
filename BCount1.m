clc
clear all
close all
Orig = imread('5cell2.PNG');
imshow(Orig)
Gry = rgb2gray(Orig);
% figure
% imshow(Gry)
EdG = edge(Gry,'canny');
figure
imshow(EdG)
flag = 0;
prev = EdG(1,1);
bactArea = regionprops(EdG,'area');
totArea = length(Orig(:,1))*length(Orig(1,:))/3;
bTarea = 0;
for i = 1:length(bactArea)
bTarea = bTarea + bactArea(i).Area;
end
perc = bTarea/totArea*100*1.75;
wCount = 0;
% for i = 1:length(EdG(:,1))
%     for j = 1:length(EdG(1,:))
%         if EdG(i,j)
%             wCount = wCount + 1;
%         end
%     end
% end
perc