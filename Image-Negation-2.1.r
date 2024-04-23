clc;
clear all;
A = imread('D:\MSC IT\Part I\Sem II\ImageProcessing\IP_Practical\IP_Practical_Images\negimg.jpg');
subplot(2,1,1);
imshow(A);
title('Orignial Image');
R = A(:,:,1);
G = A(:,:,2);
B = A(:,:,3);
[row col]=size(A);
for x=1:row
for y=1:col
R(x,y)=255-R(x,y);
G(x,y)=255-G(x,y);
B(x,y)=255-B(x,y);
end
end
A(:,:,1)=R;
A(:,:,2)=G;
A(:,:,3)=B;
subplot(2,1,2);
imshow(A);
title('Image after negation');