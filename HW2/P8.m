clc
clear
close all
img = imread('Fig0308(a)(fractured_spine).tif');
histogram = imhist(img);

cdf = cumsum(histogram);
cdf_norm = cdf / numel(img);

T = uint8(255 * cdf_norm);
img_eh = T(img + 1);

figure;
subplot(2, 3, 1);
imshow(img);
title('original');
subplot(2, 3, 2);

imhist(histogram);
title('histogram');
subplot(2, 3, 3);

plot(T);
xlim([0, 255]);
ylim([0, 255]);
title('hist-eq trans-function');

subplot(2, 3, 4);
imshow(img_eh);
title('Enhanced img');

subplot(2, 3, 5);
imhist(img_eh);
title('Enhanced Histogram');