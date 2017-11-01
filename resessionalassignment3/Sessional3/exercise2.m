I = imread('moon.tif');
subplot(1,2,1),imshow(I),title('Original');
subplot(1,2,2),imshow(imfilter(I,fspecial('unsharp'))),title('Sharpened');