image-processing
MATLAB code is for creating a GUI application using GUIDE (Graphical User Interface Development Environment) in MATLAB. This GUI allows users to perform various image processing operations on an image. Initialization Code: Sets up the GUI, determines if it should be singleton, and handles the command-line property-value pair inputs. 
Opening Function untitled_OpeningFcn: Executes before the GUI is made visible. Initializes handles and updates the GUI data structure.
Output Function untitled_OutputFcn: Returns the output to the command line.
Button Callbacks pushbutton1_Callback: Opens a file dialog to select an image file, reads the image, and displays it in the first axes.
Image Processing Functions Each of these functions performs a specific image processing operation and displays the result in the second axes.

RGB2GRAY_Callback: Converts an RGB image to grayscale. 
histogram_Callback: Displays the histogram of the image. 
Addition_Callback: Adds a constant value (128) to the grayscale image. 
Subtraction_Callback: Subtracts a constant value (128) from the grayscale image. 
divide_Callback: Divides the pixel values of the grayscale image by 2. 
multi_Callback: Multiplies the pixel values of the grayscale image by 2. 
imcomplement_Callback: Computes the complement of the grayscale image.
histeq_Callback: Performs histogram equalization on the grayscale image.
binary_Callback: Converts the grayscale image to a binary image. 
average_Callback: Applies an averaging filter to the grayscale image.
weighted_Callback: Applies a weighted filter to the grayscale image. 
addsalt_Callback: Adds salt and pepper noise to the grayscale image. 
median_Callback: Applies a median filter to a noisy image. 
max_Callback: Applies a maximum filter to a noisy image. 
min_Callback: Applies a minimum filter to a noisy image. 
laplacian_Callback: Applies a Laplacian filter to the grayscale image. 
fourierConstruct_Callback: Computes the inverse Fourier transform of the image.
ILPF_Callback: Displays the ideal low-pass filter in the frequency domain.
redimage_Callback: Extracts the red channel of an image. 
blueimage_Callback: Extracts the blue channel of an image. 
greenimage_Callback: Extracts the green channel of an image.
ruduce_Callback: Reduces the size of the image by 50%. 
double_Callback: Doubles the size of the image. 
specified_Callback: Resizes the image to 150x150 pixels. 
rotatrighr_Callback: Rotates the image 90 degrees to the right.
rotate_Callback: Rotates the image by 180 degrees. 
rotateleft_Callback: Rotates the image 90 degrees to the left. 
Gaussian_Callback: Adds Gaussian noise to the grayscale image. 
Sharp_Callback: Sharpens the image using a Laplacian filter.
Periodic_Callback: Applies a periodic noise pattern to the image.
Butternlow_Callback: Applies a Butterworth low-pass filter to the image in the frequency domain. The GUI provides buttons to perform each of these operations, and the results are displayed in a second axes element.
