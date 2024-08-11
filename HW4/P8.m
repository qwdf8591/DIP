clc
clear
close all
 
img = imread("Fig0507(a)(ckt-board-orig).tif");

%add salt&pepper noise
img_noise = imnoise(img, 'salt & pepper', 0.2);

%3*3 median filter
img_Fil = medfilt2(img_noise, [3 3]);

subplot(1,3,1), imshow(img), title('Original img');
subplot(1,3,2), imshow(img_noise), title('Noisy img');
subplot(1,3,3), imshow(img_Fil), title('Filtered img');
