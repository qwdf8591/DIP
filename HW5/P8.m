clc
clear 
close all
img = imread("Fig0110(4)(WashingtonDC Band4).TIF");
img_original = img;
img = double(img);
[M, N] = size(img);
img_pse(1:M, 1:N, :) = 0;

for i = 1:M
    for j = 1:N
        if img(i, j) >= 30
            img_pse(i,j,1) = img(i,j);
            img_pse(i,j,2) = img(i,j);
            img_pse(i,j,3) = img(i,j);
        end
        if img(i, j) < 30
            img_pse(i,j,1) = 255;
            img_pse(i,j,2) = 255;
            img_pse(i,j,3) = 0;
        end
    end
end
subplot(1,2,1);
imshow(img_original);
title('Original');
subplot(1,2,2);
imshow(uint8(img_pse));
title('Pseudo-Color')