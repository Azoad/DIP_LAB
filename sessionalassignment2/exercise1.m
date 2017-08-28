I1 = imread('E:\Third Year\3 2\DIP\DIP LAB\sessionalassignment2\cc1.jpg');
I2 = imread('E:\Third Year\3 2\DIP\DIP LAB\sessionalassignment2\cc2.jpg');
figure; 
subplot(2,2,1),imshow(I1),title('cartoon1');
subplot(2,2,2),imshow(I2),title('cartoon2');
subplot(2,2,3),imshowpair(I1,I2),title('imshowpair');
subplot(2,2,4),imshow(imabsdiff(I1,I2)),title('imabsdiff');

%swap colors using imcomplement

figure;
subplot(1,2,1),imshow(I1),title('Original');
subplot(1,2,2),imshow(imcomplement(I1)),title('Complemented');