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

img = imread('Fig0338(a)(blurry_moon).tif');
mask_size = 3;
mask_coef = [a b c; d e f; g h i];
filter_img = imfilter(img, mask_coef);
enhanced_img = imadd(img, filter_img);

subplot(1,3,1);
imshow(img);
title('original img');
subplot(1,3,2);
imshow(filter_img);
title('filtered img');
subplot(1,3,3);
imshow(enhanced_img);
title('enhanced img');