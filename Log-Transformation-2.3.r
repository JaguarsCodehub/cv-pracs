//LOG
a=imread('D:\MSC IT\Part I\Sem II\Image Processing\IP_Practical\Honey.jpg');
b=rgb2gray(a);
//Log operator
c=edge(b,'log');
imshow(c)