clc
clear
close all
%resize img to 256*256
img = imread('Fig0526(a)(original_DIP).tif');
img = imresize(img, [256 256]);

%input amplitude
a = input('Amplitude val: ');
u0 = 128;
v0 = 0;

%sinusoidal noise
[u, v] = meshgrid(1:256, 1:256);
noise = a*sin(2*pi*(u*u0/256+v*v0/256));
img_noise = im2double(img) + noise;

%compute and show spectrum of img
F = fftshift(fft2(img_noise));
spec_mag = log(abs(F) + 1);

%notch Filter
D0 = 50;
W = 5;
P = [128 128; 128 128+W; 128 128-W;128+W 128; 128-W 128];
H = ones(size(img_noise));
for i = 1:size(P, 1)
    D = sqrt((u - P(i, 1)).^2 + (v - P(i, 2)).^2);
    H(D >= D0 - W/2 & D <= D0 + W/2) = 0;
end
img_Fil = real(ifft2(ifftshift(F.*H)));
subplot(2,2,1), imshow(img), title('Original img');
subplot(2,2,2), imshow(img_noise), title('noisy img');
subplot(2,2,3), imshow(spec_mag, []), title('Spec of the img');
subplot(2,2,4), imshow(img_Fil, []), title('filtered img');