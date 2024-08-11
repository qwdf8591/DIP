8. Histogram Equalization 
(a) Write a computer program for computing the histogram of an image.
(b) Implement the histogram equalization technique discussed in Section 3.3.1.
(c) Download Fig. 3.8(a) from the course web site and perform histogram
equalization on it.
As a minimum, your answer should include the original image, a plot of its histogram,
a plot of the histogram-equalization transformation function, the enhanced image,
and a plot of its histogram. Use this information to explain why the resulting image
was enhanced as it was.

### sol:
Use imhist to generate the histogram of img, and then apply histogram equalization. Start by calculating its Cumulative Distribution Function (CDF), then normalize it. Afterwards, multiply by the intensity scale (L-1 = 255) to obtain the transformation function. Finally, apply this function to img to produce an enhanced image.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW2/P8.png)
9. Enhancement Using the Laplacian
(a) Write a program to perform spatial filtering of an image (see Section 3.4
regarding implementation). You can fix the size of the spatial mask at 3 x 3, but
the coefficients need to be variables that can be input into your program.
(b) Use the programs developed in (a) to implement the Laplacian enhancement
technique described in connection with Eq. (3.6-7).
(c) Duplicate the results in Fig. 3.38. You can download the original image from
the course web site.

### sol:
According to the task, the user needs to input the values for a Laplacian mask. Use imfilter to perform convolution of the original image with this mask. The output will emphasize the edges of the mask. Then, overlay this mask with img to achieve an image with enhanced details.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW2/p9.png)

10. Unsharp Masking (10%)
(a) Use the program developed in 9. (a) to implement high-boost filtering, as given
in Eq. (3.6-9). The averaging part of the process should be done using the mask
in Fig. 3.32(a).
(b) Download Fig. 3.40(a) from the course web site and enhance it using the
program you developed in (a). Your objective is to approximate the result in Fig.
3.40(e).

### sol:
As per the task, the user is required to input values for an average mask. Use imfilter to perform convolution of the original image with this mask, producing a blurred mask. Then, subtract this blur mask from the original image to get a gmask. Next, multiply this gmask by a factor (e.g., 4.5) and add it back to the original image to produce a smoother image.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW2/p10.png)
