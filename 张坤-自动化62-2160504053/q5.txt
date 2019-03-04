clc;clear all;
s1=imread('lena.bmp');
s2=imread('elain1.bmp');
T=[1 1.5 0;0 1 0;0 0 1];  
tform=maketform('affine',T);
ss1=imtransform(s1,tform);
ss2=imtransform(s2,tform);
n1=imresize(ss1,[2048 2048],'nearest');
br1=imresize(ss1,[2048 2048],'bilinear');
bc1=imresize(ss1,[2048 2048],'bicubic');
n2=imresize(ss2,[2048 2048],'nearest');
br2=imresize(ss2,[2048 2048],'bilinear');
bc2=imresize(ss2,[2048 2048],'bicubic');
figure(1);
subplot(2,2,1)
imshow(s1);title('原图');
subplot(2,2,2)
imshow(n1);title('近邻');
subplot(2,2,3)
imshow(br1);title('双线性');
subplot(2,2,4)
imshow(bc1);title('双三次');
figure(2);
subplot(2,2,1)
imshow(s2);title('原图');
subplot(2,2,2)
imshow(n2);title('近邻');
subplot(2,2,3)
imshow(br2);title('双线性');
subplot(2,2,4)
imshow(bc2);title('双三次');

ss3=imrotate(s1,30);
ss4=imrotate(s2,30);
n3=imresize(ss3,[2048 2048],'nearest');
br3=imresize(ss3,[2048 2048],'bilinear');
bc3=imresize(ss3,[2048 2048],'bicubic');
n4=imresize(ss4,[2048 2048],'nearest');
br4=imresize(ss4,[2048 2048],'bilinear');
bc4=imresize(ss4,[2048 2048],'bicubic');
figure(3);
subplot(2,2,1)
imshow(s1);title('原图');
subplot(2,2,2)
imshow(n3);title('近邻');
subplot(2,2,3)
imshow(br3);title('双线性');
subplot(2,2,4)
imshow(bc3);title('双三次');
figure(4);
subplot(2,2,1)
imshow(s2);title('原图');
subplot(2,2,2)
imshow(n4);title('近邻');
subplot(2,2,3)
imshow(br4);title('双线性');
subplot(2,2,4)
imshow(bc4);title('双三次');