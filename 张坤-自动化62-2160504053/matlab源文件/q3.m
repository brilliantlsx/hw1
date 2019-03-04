sample=imread('lena.bmp');
s=double(sample);
aver=mean(mean(s))
st=var(s(:))