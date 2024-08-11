clear
close all
img = imread('Fig0441(a)(characters_test_pattern).tif');

F = fft2(double(img));

FS = fftshift(F);

S = abs(FS);

imshow(log(S+1), []);

avg = mean(img(:))
