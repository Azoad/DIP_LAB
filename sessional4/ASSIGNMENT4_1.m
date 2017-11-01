I = imread('Lake.jpg');

cform = makecform('srgb2lab');

%cform denotes which type of color transformation will take place,in this
%case rgb to lab color space

lab = applycform(I,cform);
%apply color transformation

b = lab(:,:,3);
%get the b channel

figure
imshow(b);

bw = im2bw(b);
%converts into binary image by thresholding

bw3 = bwareaopen(bw, 50);
%removes all small objects of binary image under given pixels

figure
imshow(bw3);



inverseimg=~(bw3);

bw1=bwareaopen(inverseimg,500);
figure
imshow(bw1);
%masking done

s=regionprops(bw1,'Area');

area=s.Area;

[x , y]=size(bw3);

a=((6.901*5.258)/(x*y))*area;

p=regionprops(bw3,'Perimeter');

peri=p.Perimeter;










