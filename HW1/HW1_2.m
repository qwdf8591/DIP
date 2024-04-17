img = imread('Fig0220(a)(chronometer 3692x2812  2pt25 inch 1250 dpi).tif');
a = imresize( img, 1/12);
imshow(a);
b = imresize(a, 12);
figure;
imshow(b);
figure;
imshow(img);