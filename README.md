# Autofocusing-of-camera-using-a-stack-of-images
Creating region of interest based on user's choice and focusing that. This region is focused in other images as well contained in that dataset. Following this the image with best focus is displayed.
# The Function I created
Name: RegionofInterest
# How it Works: 

Gives user a chance to select a region of interest that is the region to apply the focusing
.
Rather than roipoly in which regions had to be chosen manually everytime I had created the region of interest based on users choice.
The loops out here are for the user to choose a region of his choice.
roifilt2: filters regions of interest (ROIs) in the 2-D image by using the 2-D linear filter I had used by the variable name 'filter' that is passed onto it.
# How the Colored Image Handling code works:
This code is written to find the image which has the best focus 
measure at the selected ROI. Since the dataset given contained both 
colored and greyscale image. Hence I segregated them and treated them 
accordingly. User can give boundaries for the region as per their choice.  I am building a complete file with the specification as per the folder and file names.
The primary aim is to bring into focus the region that has been chosen by the user. The
RegionofInterest function is used to do the focusing that was asked.The second task is to display the image that had the best
focus in the given ROI.The metric for doing so according to my code
is Standard Deviation (I had checked on the 'cameraman.tif' image).The image having highest standard deviation, which is the
best focused in the given ROI amongst the other images in that particular
dataset. This is what was asked for.
# How the Greyscale Image Handling code works:
This code is exactly similar to the one written for the colored images,only change 
that needs to be incorporated to handle this is as mentioned in the function
block i.e. to comment out lines 32 and 33 since for greyscale images only a single 
channel is present, thus only that is the one that needs to be dealt with. Rest all are
same as was discussed earlier.
