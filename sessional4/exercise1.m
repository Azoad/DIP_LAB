% take the image and show it
I = imread('Lake.jpg');
imshow(I),title('Original Lake image');
% applying cform to change image from rgb to lab and show only the b plane
C = makecform('srgb2lab');
lab = applycform(I,C);
figure,imshow(lab(:,:,3)),title('image in b plane');
% using direct transformation also gives the same result
% lab2 = rgb2lab(I);
% figure,imshow(lab2(:,:,3));
% bi = lab2(:,:,3); 
% converting the lab image into bw
Ib = im2bw(lab(:,:,3));
figure,imshow(Ib),title('thresholded image');
% complementing the image can also be done using imcomplement
In = ~Ib;
% filtering the image so that only the biggest object remain
bw = bwareafilt(In,1);
figure,imshow(bw),title('mask image of the lake');

% taking the given dimensions in variables
xkm = 6.901;
ykm = 5.258;
% getting size of the image
[x y] = size(bw);
% counting the total number of white pixels in the image
numpixels1 = regionprops(bw,'Area');
% can also be done with sum(bw(:))
%calculating area
area = ((xkm*ykm)/(x*y))*numpixels1.Area;

%detecting edge/perimeter of the lake
Ic = edge(bw,'canny');
figure,imshow(Ic),title('showing perimeter of the lake');
% can also be done with bwperim()
% filling the inner small areas
If = imfill(bwareafilt(Ic,1),'holes');
figure,imshow(If),title('actual perimeter');
% same as area but using different technique
% can also be done with regionprops(If,'area')
numpix = sum(If(:));
% perimeter for x dimension
perimeterx = (xkm/x)*numpix;
% perimeter for y dimension
perimetery = (ykm/y)*numpix;