clc
clear
close all
img = imread("Fig0457(a)(thumb_print).tif");
M = size(img, 1);
N = size(img, 2);
    
% 設gaussian center
center = round([M, N] / 2);
    
% create meshgrid
[X, Y] = meshgrid(1:N, 1:M);
D0 = 30;    
% calculate
D = sqrt((X - center(2)).^2 + (Y - center(1)).^2);
    
% GLPF
G = exp(-D.^2 / (2 * D0^2));


% GHPF
H = 1 - G;

img_double = double(img);
img_filtered = ifft2(fft2(img_double) .* fftshift(H));
img_fft = fft2(double(img));

img_filtered = abs(img_filtered);
figure;
imhist(uint8(img_filtered));
filtered_image = mat2gray(img_filtered);
% Threshold
binary_image = imbinarize(filtered_image, 0.3);
grad_mag = img_filtered;
T = 27;
bin_img = grad_mag > T;

figure;
subplot(1,3,1), imshow(img), title('Original Image');
subplot(1,3,2), imshow(filtered_image), title('Filtered Image');
subplot(1,3,3), imshow(bin_img), title('Binary Image');

