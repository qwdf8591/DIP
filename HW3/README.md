8. Fourier Spectrum and Average Value
(a) Download Fig. 4.41(a) from the course web site and compute its (centered)
Fourier spectrum.
(b) Display the spectrum.
(c) Use your result in (a) to compute the average value of the image.

### sol:
Start by reading the image and performing a Fourier Transform (FT) to convert it from the spatial domain to the frequency domain. Move the zero-frequency component to the center. Then, calculate the magnitude of the frequency spectrum and display it. Also, calculate and display the average intensity of the image as required by the task.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW3/P8.png)

9. Edge Detection Combined with Smoothing and Thresholding
(a) Extend the program from HW #2 p.9(a) to compute the Sobel gradient using the
masks in Fig. 3.41 (d) & (e). Your program should implement Eq. (3.6-12), and
have the option of outputting a binary image by comparing each gradient point
against a specified threshold, T.
(b) Download Fig. 2.35(c) from the course web site. By combining smoothing with
a 3 x 3 mask from HW #2 p.9(a) and your program from (a), process Fig. 2.35(c)
and produce a binary image that isolates (segments) the large blood vessel in
the center of the image. This will require repeated trials of smoothing and
choices of T. Looking at the histogram (HW #2 p.8) of the gradient image before
it is thresholded will help you select a value for T. Please also specify the final
T value you used.

### sol:
As per the task requirements, first define the values for the Sobel mask. Due to the task's requirement to initially perform smoothing separately on the X and Y axes, calculate the gradient magnitude afterward and print it. It is observed that the gradient values start to decrease rapidly after about 30, so set the threshold value to 30 and print the binary image.

### result:![image](https://github.com/qwdf8591/DIP/blob/matlab/HW3/P9.png)

10. Highpass Filtering Combined with Thresholding
(a) Implement the Gaussian highpass filter of Eq. (4.9-4). You must be able to
specify the size, M x N, of the resulting 2D function. In addition, you must be
able to specify the location of the center of the Gaussian function.
(b) Download Fig. 4.57(a) from the course web site and use your program from (a)
combined with thresholding to approximate the results in Fig. 4.57 (Note that
you will be using a Gaussian instead of a Butterworth filter).

### sol:
The task requires modifying an example from a Butterworth High Pass Filter (BHPF) to a Gaussian High Pass Filter (GHPF), and determining the size accordingly. First, obtain the size of the image with M and N. The center is then set at M/2 and N/2 using the round function for integer values. Next, use meshgrid to create a grid of the same size as the image. The formula for a Gaussian Low Pass Filter (GLPF) is applied below, and the GHPF is obtained by subtracting GLPF from 1. Perform a Fourier transform of the image with this filter. Since a threshold is also used here, calculate the gradient magnitude and choose the value after the peak as the basis, as illustrated in the figure. Select T = 27 as the threshold, and finally, print all the images.

### result:![image](https://github.com/qwdf8591/DIP/blob/matlab/HW3/p10.2.png)
