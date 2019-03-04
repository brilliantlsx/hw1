clc;clear all;
sample=imread('lena.bmp');
n=imresize(sample,[2048,2048],'nearest');
br=imresize(sample,[2048,2048],'bilinear');
bc=imresize(sample,[2048,2048],'bicubic');
subplot(2,2,1);
imshow(sample);
title('原图');
subplot(2,2,2);
imshow(n);
title('最近邻');
subplot(2,2,3);
imshow(br);
title('双线性');
subplot(2,2,4);
imshow(bc);
title('双三次内插法')
