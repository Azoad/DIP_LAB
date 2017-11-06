I=imread('bricks.jpg');
subplot 231;imshow(I);

BW=rgb2gray(I);
BW1=edge(BW,'Canny');
subplot 232;imshow(BW1);

RGB = I;

cform = makecform('srgb2lab');
Lab = applycform(RGB,cform);

L_plane=Lab(:,:,1);
a_plane=Lab(:,:,2);
b_plane=Lab(:,:,3);

level=graythresh(b_plane);
BW2=im2bw(b_plane,level);
BW3=bwareafilt(BW2,1);
BW4=edge(BW3,'Canny');
BW5=BW4;
subplot 233;imshow(BW4);

level=graythresh(a_plane);
BW2=im2bw(a_plane,level);
BW3=bwareafilt(BW2,5);
BW4=edge(BW3,'Canny');
BW6=BW4;
subplot 234;imshow(BW4);

BW4=BW5+BW6;
subplot 235;imshow(BW4);

