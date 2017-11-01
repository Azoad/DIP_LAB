I = imread('miranda.tif');
h = fspecial('unsharp');
sharpened = imfilter(I,h);
subplot 121;imshow(I);title('Original'); 
subplot 122;imshow(sharpened);title('Sharpened');