I = imread('coins.png');
bw = imbinarize(I);
fill = imfill(bw, 'holes');
[labeledImage, numberOfObject] = bwlabel(fill);
fprintf('%i\n', numberOfObject);
figure,
subplot(2,2,1), imshow(I), title('Original image');
subplot(2,2,2), imshow(bw), title('Threshold image');
subplot(2,2,3), imshow(fill), title('Hole filled image');
subplot(2,2,4), imshow(label2rgb(labeledImage)), title('Hole filled coin');

I2 = imread('GLUCOSE.tif');
bw2 = imbinarize(I2);
com = imcomplement(bw2);
[labeledImage2, numberOfObject2] = bwlabel(com);
fprintf('%i\n', numberOfObject2);
figure,
subplot(2,2,1), imshow(I2), title('Original image');
subplot(2,2,2), imshow(bw2), title('Threshold image');
subplot(2,2,3), imshow(com), title('Complemented image');
subplot(2,2,4), imshow(label2rgb(labeledImage2)), title('Labeled atom in glucose');