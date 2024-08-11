clc
clear
close all
img = imread("Fig0507(a)(ckt-board-orig).tif");
blur_fil = fspecial('motion',30,45);
img_blur = imfilter(im2double(img), blur_fil, 'conv', 'circular');
img_gauss = imnoise(img_blur, 'gaussian', 0, 0.001);
img_wiener = wiener2(img_gauss, [size(blur_fil, 1) size(blur_fil, 2)]);
subplot(2,2,1), imshow(img), title('Original img');
subplot(2,2,2), imshow(img_blur), title('blur img');
subplot(2,2,3), imshow(img_gauss), title('Gassian img');
subplot(2,2,4), imshow(img_wiener), title('Wiener img');
