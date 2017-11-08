I = imread('Rost-Bump.jpg');
I = rgb2gray(I);
glcm = graycomatrix(I);
stat = graycoprops(glcm);