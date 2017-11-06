I=imread('E:\CSEKU_3-2 TERM\coins.png');
I1=imread('E:\CSEKU_3-2 TERM\GLUCOSE.tif');

level = graythresh(I);
level1 = graythresh(I1);
%to minimize the intraclass variance of dark and white pixels

BW = imbinarize(I,level);
BW1 = imbinarize(I1,level1);
%converts intensity image to binary image

invimg=~(BW1);

img=imfill(BW,'holes');
img1=imfill(invimg,'holes');
%fill the holes

[labeledImage, numberOfCoins] = bwlabel(img);
[labeledImage1, numberOfglucose] = bwlabel(img1);
%returns number of connected objects in the image

RGB = label2rgb(labeledImage); 
RGB1 = label2rgb(labeledImage1);

%converts label matrix into
figure;

subplot (4,2,1), imshow(I), title('Original coin image');
subplot (4,2,2), imshow(BW), title('Binary coin image');
subplot (4,2,3), imshow(img), title('Hole filled coin image');
subplot (4,2,4), imshow(RGB), title('RGB coins');

subplot (4,2,5), imshow(invimg), title('Binary glucose image');
subplot (4,2,6), imshow(RGB1), title('RGB atom');



