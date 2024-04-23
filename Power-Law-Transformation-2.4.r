//Power Law transformation
clear all;
clc;
close all;
i=imread('D:\MSC IT\Part I\Sem II\Image
Processing\IP_Practical\IP_Practical_Images\flower.jpg');
subplot(2,1,1);
imshow(i);
title('Original Image');
i=im2double(i);
c=1;
[row col]=size(i);
for x=1:row
for y=1:col
i(x,y)=c*i(x,y)^0.5; //1.5
end
end
i=im2uint8(i);
subplot(2,1,2);
imshow(i);
title('Image after power-law transformation');