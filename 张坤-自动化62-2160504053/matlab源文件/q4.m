clc;clear all;
sample=imread('lena.bmp');
n=imresize(sample,[2048,2048],'nearest');
br=imresize(sample,[2048,2048],'bilinear');
bc=imresize(sample,[2048,2048],'bicubic');
subplot(2,2,1);
imshow(sample);
title('ԭͼ');
subplot(2,2,2);
imshow(n);
title('�����');
subplot(2,2,3);
imshow(br);
title('˫����');
subplot(2,2,4);
imshow(bc);
title('˫�����ڲ巨')
