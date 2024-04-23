clc;
a=imread('D:\MSC IT\Part I\Sem II\Image Processing\IP_Practical\Honey.jpg');
b=double(a);
[m,n]=size(b);
T=100;
for i=1:m
for j=1:n
if(b(i,j)<T)
c(i,j)=0;
else
c(i,j)=255;
end
end
end
imshow(uint8(c));