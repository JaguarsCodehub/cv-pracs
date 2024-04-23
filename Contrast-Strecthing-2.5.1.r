clc
a = imread ("D:\MSC IT\Part I\Sem II\ImageProcessing\IP_Practical\IP_Practical_Images\lena.png");
a = rgb2gray ( a ) ;
b = double ( a ) *0.5;
b = uint8 ( b );
c = double ( b ) *2;
c = uint8 ( c );
subplot(1,3,1)
imshow(a) ;
title ( "Original Image " )
subplot(1,3,2)
imshow(b) ;
title ( "Decrease in Contrast" )
subplot(1,3,3)
imshow(c) ;
title ( "Increase in Contrast")