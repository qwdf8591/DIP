clc
clear
close all
img = imread("Fig0635(bottom_left_stream).tif");
img_original = img;

img_RGB(:,:,1) = histeq(img(:,:,1));
img_RGB(:,:,2) = histeq(img(:,:,2));
img_RGB(:,:,3) = histeq(img(:,:,3));

histavg = rgb2hsv(img);
histeq = histeq(histavg(:,:,3));
histavg(:,:,3) = histeq;
img_ref = hsv2rgb(histavg);
img_enhanced = imhistmatch(img,img_ref);

subplot(3,2,1);
imshow(img_original);
title('Original');
subplot(3,2,3);
imshow(uint8(img_RGB));
title('RGB');

subplot(3,2,4);
histogram(img_RGB);

subplot(3,2,5);
imshow(uint8(img_enhanced));
title('RGB enhanced');
subplot(3,2,6);
histogram(img_enhanced);