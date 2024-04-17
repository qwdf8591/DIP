close all
a = input('(0,0) coef:');
b = input('(0,1) coef:');
c = input('(0,2) coef:');
d = input('(1,0) coef:');
e = input('(1,1) coef:');
f = input('(1,2) coef:');
g = input('(2,0) coef:');
h = input('(2,1) coef:');
i = input('(2,2) coef:');
k = input(' high-boost coef:');

img = imread("Fig0340(a)(dipxe_text).tif");
mask_size = 3;
mask_avg = [a b c; d e f; g h i]/9;
img_prime = imfilter(img, mask_avg);
gmask = img - img_prime;
enhanced_img = imadd(img, k*gmask);

subplot(1,2,1);
imshow(img);
title('original img');
subplot(1,2,2);
imshow(enhanced_img);
title('high-boosting img');