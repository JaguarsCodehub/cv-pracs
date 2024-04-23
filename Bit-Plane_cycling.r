clc;
clear all;
f=imread('D:\MSC IT\Part I\Sem II\Image
Processing\IP_Practical\IP_Practical_Images\lenag.jpeg');
f=double(f);
[r,c]=size(f);
com=[128 64 32 16 8 4 2 1];
for k=1:1:length(com);
for i=1:r
for j=1:c
new(i,j)=bitand(f(i,j),com(k));
end
subplot(2,4,k);
imshow(new);
end
end