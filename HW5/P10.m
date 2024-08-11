clc
clear
close all
img = imread("Fig0628(b)(jupiter-Io-closeup).tif");
[m,n,o] = size(img);
img_dark = zeros(m,n,'uint8');

for i = 1:1:m
    for j = 1:1:n
        if img(i,j,1) < 40 && img(i,j,2) < 40 && img(i,j,3) < 40
            img_dark(i,j) = 255;
        else
            img_dark(i,j) = 0;
        end
    end
end

subplot(1,2,1);
imshow(img);
title('Original img');
subplot(1,2,2);
imshow(img_dark);
title('Img_segaration');
