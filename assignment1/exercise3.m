% importing .dat file
I = fopen('standford.dat');
% reading .dat file to matlab readable format with defined size
I = fread(I,[580,435]);
% rotating the image
I = imrotate(I,270);
% converting the matrix to gray level
Id = double(I);
Im = mat2gray(Id);
figure;
subplot(2,2,1),imshow(Im),title('Gray Image');
% converting gray image to BW image
Im = imbinarize(Im);
% displaying the BW image
subplot(2,2,2),imshow(Im),title('B+W Image');
% converting gray image to shade of blue
ImBlue(:,:,3) = mat2gray(I);
% displaying the image
subplot(2,2,3),imshow(ImBlue),title('Blue Image');
% applying new color table to the image
ImNew = double(zeros(435,580,3));
for i = 1:435
    for j = 1:580
        if I(i,j) <= 100
            ImNew(i,j,1) = 0;
            ImNew(i,j,2) = (Id(i,j)/100);
            ImNew(i,j,3) = 0;
        elseif I(i,j) <= 200
                ImNew(i,j,1) = ((Id(i,j)-100)/100);
                ImNew(i,j,2) = 1;
                ImNew(i,j,3) = 0;
            else
                ImNew(i,j,1) = 1;
                ImNew(i,j,2) = 1;
                ImNew(i,j,3) = ((Id(i,j)-200)/55);
        end
    end
end

% displaying new Image
subplot(2,2,4),imshow(ImNew),title('Color Mapped Image');