I=imread('pisa_original.jpg');
subplot 231;imshow(I);

RGB = I;

cform = makecform('srgb2lab');
Lab = applycform(RGB,cform);

L_plane=Lab(:,:,1);
a_plane=Lab(:,:,2);
b_plane=Lab(:,:,3);

subplot 232;imshow(b_plane);

level=graythresh(b_plane);
BW=im2bw(b_plane,level);
subplot 233;imshow(BW);
BW=im2bw(b_plane);

BW2=edge(rgb2gray(I),'Canny');
[H T R]=hough(BW2,'RhoResolution',0.5,'ThetaResolution',0.5);
subplot 234;imshow(imadjust(H),'XData',T,'YData',R,'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
