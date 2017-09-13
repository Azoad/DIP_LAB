I = imread('E:\Third Year\3 2\DIP\DIP LAB\sessionalassignment2\rocks.jpg');
figure;
subplot(1,2,1),imshow(I),title('Original');
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
% histogram equalizing of different planes
R = histeq(R);
G = histeq(G);
B = histeq(B);
%reconstructing image
I = cat(3,R,G,B);
subplot(1,2,2),imshow(I),title('Normal HE');