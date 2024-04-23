clc;
clear all;
a=imread('D:\MSC IT\Part I\Sem II\ImageProcessing\IP_Practical\IP_Practical_Images\lena.png');
a1=58; // This value is user defined
b1=158; // This value is user defined
[r,c]=size(a);
figure(2);
subplot(2,1,1);
imshow(a);
for i=1:r
for j=1:c
if (a(i,j)>a1 & a(i,j)<b1)
x(i,j)=255;
else
x(i,j)=a(i,j);
end
end
end
x=uint8(x);
subplot(2,1,2);
title('Gray level slicing with background')
imshow(x);


CODE WITHOUT BACKGROUND
clc;
clear all;
a=imread('D:\MSC IT\Part I\Sem II\Image
Processing\IP_Practical\IP_Practical_Images\lena.png');
a1=50; // This value is user defined
b1=150; // This value is user defined
[r,c]=size(a);
figure(1)
subplot(2,1,1);
imshow(a);
for i=1:r
for j=1:c
if (a(i,j)>a1 & a(i,j)<b1)
x(i,j)=255;
else
x(i,j)=0;
end
end
end
x=uint8(x);
subplot(2,1,2);
title('Gray level slicing without background');
imshow(x);