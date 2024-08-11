clear
close all
img = imread("Fig0235(c)(kidney_original).tif");
%sobel
mask_x = [-1 0 1; -2 0 2; -1 0 1];
mask_y = [-1 -2 -1; 0 0 0; 1 2 1];
%smoothing
mask_sm = fspecial('gaussian', [3,3], 1);
img_sm = conv2(img, mask_sm, 'same');
%convolve img with mask
f1 = conv2(img_sm, mask_x, 'same');
f2 = conv2(img_sm, mask_y, 'same');
%Gradient Magnitude
grad_mag = abs(f1) + abs(f2);
%threshold

Thre = 30;
bina_img = grad_mag > Thre;

imhist(uint8(grad_mag));
figure;
subplot(1,2,1);
imshow(img);
title('Original Img');
subplot(1,2,2);
imshow(bina_img);
title('Binary Img');
imwrite(uint8(bina_img * 255), "Binary_Img.png");

