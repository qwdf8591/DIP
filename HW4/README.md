8. Noise Reduction Using a Median Filter
(a) Develop a program that can perform 3 x 3 median filtering.
(b) Download Fig. 5.7(a) from the course website and add salt-and-pepper noise to it,
with Pa = Pb = 0.2.
(c) Apply median filtering to the image in (b). Explain any major differences between
your result and Fig. 5.10(b).

### sol:
According to the image requirements, add salt and pepper noise, then transform this image using a median filter and print the result.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW4/P8.png)

9. Periodic Noise Reduction Using a Notch Filter
(a) Write a program that implements sinusoidal noise of the form given in Problem 5.14.
The inputs to the program must be the amplitude A, and the two frequency components
u0 and v0 shown in the problem equation.
(b) Download Fig. 5.26(a) from the course website and add sinusoidal noise to it, with
u0 = M/2 (the image is square) and v0 = 0. The value of A must be high enough for the
noise to be clearly visible in the image.
(c) Compute and display the spectrum of the image. If the FFT program can only handle
images of size equal to an integer power of 2, reduce the size of the image to 512 x 512
or 256 x 256. Resize the image before adding noise to it.
(d) Notch-filter the image using a notch filter of the form shown in Fig. 5.19(c).

### sol:
As required by the task, first resize the image to 256x256, then add sinusoidal wave noise. Perform a Fourier Transform on it, move the zero-frequency component to the center, and calculate its intensity. Then, create a notch filter matching the size of the image and apply it to the Fourier-transformed noisy image. Finally, print these images.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW4/P9.png)

10. Parametric Wiener Filter
(a) Implement a blurring filter as in Eq. (5.6-11).
(b) Download Fig. 5.26(a) from the course website and blur it in the +45-degree direction
using T = 1, as in Fig. 5.26(b).
(c) Add Gaussian noise of 0 mean and variance of 10 pixels to the blurred image.
(d) Restore the image using the parametric Wiener filter given in Eq. (5.8-6).

### sol:
According to the task requirements, create motion blur, Gaussian, and Wiener filters to simulate a shaken photo and print each one sequentially.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW4/P10.png)
