I = imread('bricks.jpg');
gr = rgb2gray(I);
ae = edge(gr, 'Canny'); 

c = makecform('srgb2lab');
lb = applycform(I, c);

red_plane = lb(:, :, 2);
blue_plane = lb(:, :, 3);

red = imbinarize(red_plane);
blue = imbinarize(blue_plane);
blue = bwareafilt(blue,1);
red = bwareafilt(red,6);
be = edge(blue, 'Canny');
re = edge(red, 'Canny');
rb = be+re;
figure,
subplot(2,3,1), imshow(I), title('Origina image');
subplot(2,3,2), imshow(ae), title('All Edges');
subplot(2,3,3), imshow(be), title('Blue Edges');
subplot(2,3,4), imshow(re), title('Red Edges');
subplot(2,3,5), imshow(rb), title('Red+Blue Edges');