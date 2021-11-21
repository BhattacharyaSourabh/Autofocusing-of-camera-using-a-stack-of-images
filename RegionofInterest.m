%this function works for colored images
%give user a chnace to select a region of interest
%that is the region to apply unsharp masking
%Rather than roipoly in which regions had to be chosen manually everytime
%I had created the region of interest based on users choice.
%the loops out here are for the user to choose a region of his choice
%roifilt2 filters regions of interest (ROIs) in the 2-D image I 
%using the 2-D linear filter 'filter' that is passed onto it.


function k = RegionofInterest(I,filter,w,c,g,h)%the function for ROI choice
bb = size(I);%size of image
x=bb(1); y=bb(2); %taking the length and breadth of image for mask
testmat = zeros(x,y); %declaring the matrix which will form the ROI eventually
for i = 1:x
    for j=1:y
        if (i>w && i<c)
            if (j>g && j<h)
                testmat(i,j)=1; %forming binary mask
            end
        else
            testmat(i,j)=0;
        end
    end
end
bmask = testmat;
%for the analysis of greyscale images please comment out lines 32 & 33
%uncomment lines 29 & 30 to see the mask i.e. the region of interest
figure
imshow(bmask) 
k(:,:,1) = roifilt2(filter,I(:,:,1),bmask); %for the first channel..
% k(:,:,2) = roifilt2(filter,I(:,:,2),bmask); %doing for second channel
% k(:,:,3) = roifilt2(filter,I(:,:,3),bmask); %doing for the third channel

