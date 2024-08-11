8. (a) Write a computer program capable of reducing the number of intensity levels in an
image from 256 to 2, in integer powers of 2. The desired number of intensity levels needs
to be a variable input to your program.

### sol: 
  The script prompts the user to enter values for a, b, c, d, e, f, g, and h. These values determine the power of 2 used for thresholding 
the image. For example, if you enter 3 for a, the script will display the image thresholded at 2^3 (or 8) levels.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW1/1.a.png)

9.(a) Write a computer program capable of zooming and shrinking an image by pixel
replication. Assume that the desired zoom/shrink factors are integers.
(b) Download Fig. 2.20(a) from the course web site and use your program to shrink the
image by a factor of 12.
(c) Use your program to zoom the image in (b) back to the resolution of the original.
Explain the reasons for their differences.

### sol:
Resizing Process:

1. The image is first resized to 1/12 of its original size. This downsized image is displayed to show the effect of significant reduction in resolution.
2. The downsized image is then resized back to approximately its original size by using a scaling factor of 12. This upsized image is displayed in a new figure window to evaluate the loss of detail due to resizing.

### result:
![image](https://github.com/qwdf8591/DIP/blob/matlab/HW1/2.a.png)

10.(a) Write a computer program capable of rotating, scaling, and translating an image by
specified degree, ratio, and pixels. The rotation degree, scaling ratio, and translating
pixels need to be variable inputs to your program.
(b) Download Fig. 2.36 (a) from the course web site and rotate the image 23 ﾟ clockwise,
scale it to 2/3 of original size, and shift it by 18 and 22 pixels in x and y directions,
respectively. Show the results using three interpolation approaches mentioned in the
textbook. Please also zoom in the results to compare the differences as shown in Figs.
2.36 (b) – (d).

### sol:

1.User Inputs:
degree: Users are prompted to input the angle in degrees to rotate the image.
scaling ratio: Users are prompted to input the scaling factor for resizing the image.
x val and y val: Users are prompted to input the translation values for the x and y coordinates, respectively.

2.Image Processing:
The image is first resized according to the user-specified scaling ratio.
The resized image is then translated based on the input x and y values.
The translated image is subsequently rotated by the specified degree in the negative direction using four different interpolation methods: default, 'nearest', 'bilinear', and 'bicubic'.

### result:
![image](https://github.com/qwdf8591/DIP/blob/matlab/HW1/3.a.png)

![image](https://github.com/qwdf8591/DIP/blob/matlab/HW1/3.b.png)
