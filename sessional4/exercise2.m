I = imread('bricks.jpg');
imshow(I),title('Original Image');
I2 = edge(rgb2gray(I),'canny');
figure,imshow(I2),title('All edges of the image');
C = makecform('srgb2lab');
lab = applycform(I,C);
b = lab(:,:,3);
a = lab(:,:,2);
level=graythresh(b);
BW1=edge(bwareafilt(im2bw(b,level),6),'Canny');
figure,imshow(BW1),title('Edges of Blue Blocks');
level=graythresh(a);
BW2=edge(bwareafilt(im2bw(a,level),6),'Canny');
figure,imshow(BW2),title('Edges of Red Blocks');
BW=imadd(BW1,BW2);
figure,imshow(BW),title('Blue+Red edges');


II = imread('pisa.png');
imshow(II);
C = makecform('srgb2lab');
labp = applycform(II,C);
IIl = labp(:,:,3);
figure;imshow(IIl);
level = graythresh(IIl);
IIb = im2bw(IIl,level);
figure;imshow(IIb);
IIe = edge(IIb,'Canny');
figure;imshow(IIe);
