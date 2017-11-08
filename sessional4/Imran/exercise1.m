I = imread('Lake.jpg');

c = makecform('srgb2lab');
lb = applycform(I, c);
b = lb(:, :, 3);

bw = imbinarize(b);
com = imcomplement(bw);
bw2 = bwareafilt(com,1,'largest');
per = bwperim(bw2);
res = regionprops(bw2, 'area');
display(res);
[row, column] = size(bw2);
count1= 0;
for i=1:1:row
    for j=1:1:column
        if(per(i,j)==1)
            count1=count1+1;
        end
    end
end
ph = 6.901/row;
pw = 5.258/column;
Area = ph*pw*res.Area;
display(Area);
Perimeter = ph*count1;
display(Perimeter);

figure,
subplot(2,2,1), imshow(I), title('Original image');
subplot(2,2,2), imshow(b), title('Blue Plane');
subplot(2,2,3), imshow(bw), title('Threshold image');
subplot(2,2,4), imshow(bw2), title('Mask image');
figure,
imshow(per), title('Perimeter');