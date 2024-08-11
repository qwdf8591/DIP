8. Pseudo-Color Image Processing 
(a) Implement Fig. 6.23, with the characteristic that you can specify two ranges of graylevel values for the input image and your program will output an RGB image whose pixels
have a specified color corresponding to one range of gray levels in the input image, and
the remaining pixels in the RGB image have the same shade of gray as they had in the
input image. You can limit the input colors to all the colors in Fig. 6.4(a).
(b) Download the image in Fig. 1.10(4) from the course web site and process it with your
program so that the river appears yellow and the rest of the pixels are the same shades of
gray as in the input image. It is acceptable to have isolated specs in the image that also
appear yellow, but these should be kept as few as possible by proper choice of the two
gray-level bands that you input into your program.

### sol:
- Load Image: Load a specified grayscale image.
- Initialize Variables: Read the image size and create a new three-channel (RGB) image array to store the transformed pseudo-color image.
- Conditional Processing:
  - If a pixel value is greater than or equal to 30, represent that pixel in the pseudo-color image with its original grayscale value, i.e.,       unchanged across all three color channels (R, G, B).
  - If a pixel value is less than 30, set that pixel in the pseudo-color image to yellow, where the red and green channels are set to 255,       and the blue channel is set to 0.
  - Finally, display both the original grayscale image and the processed pseudo-color image for comparison.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW5/P8.png)

9. Color Image Enhancement by Histogram Processing
(a) Download the dark-stream color picture in Fig. 6.35 from the course web site. Convert
the image to RGB. Histogram-equalize the R, G, and B images separately using the
histogram-equalization program from Homework 2 and convert the image back to tif
format.
(b) Form an average histogram from the three histograms in (a) and use it as the basis to
obtain a single histogram equalization intensity transformation function. Apply this
function to the R, G, and B components individually, and convert the results to tif.
Compare and explain the differences in the tif images in (a) and (b).

### sol:
- Load and Display Original Image:
  - Load a specified color image and display its original version.
- Histogram Equalization:
  - Process each RGB channel separately.
  - Display the image after equalization of RGB channels.
- Convert to HSV and Equalize:
  - Convert the RGB image to the HSV color space.
  - Perform histogram equalization on the brightness (Value) channel of HSV.
  - Convert the processed HSV back to RGB format to obtain another type of enhanced image.
- Image Matching:
  - Use the imhistmatch function to match the color distribution of the original image to the histogram-equalized result.
  - Display the matched enhanced image.
- Visualization Comparison:
  - Use multiple subplots to display the images and histograms before and after processing, including the original image, RGB equalized image,     enhanced image, and their histograms.

### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW5/P9.png)

10. Color Image Segmentation 
Download Fig. 6.28(b) from the course web site and duplicate Example 6.15, but segment
instead the darkest regions in the image.

### sol:
- Image Segmentation:
  - Inspect each pixel of the image to determine if its RGB values are below a set threshold (40).
  - If all RGB channels of a pixel are below 40, then mark that pixel as white (255) in the output image.
  - Otherwise, mark it as black (0).
- Display Results:
  - Show both the original image and the segmented binary image to facilitate a visual comparison.
 
### result: ![image](https://github.com/qwdf8591/DIP/blob/matlab/HW5/P10.png)
