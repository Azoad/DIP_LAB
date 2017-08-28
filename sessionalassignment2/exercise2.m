I = imread('E:\Third Year\3 2\DIP\DIP LAB\sessionalassignment2\spine.jpg');
Id = im2double(I);
In = Id;
figure;
subplot(3,3,2),imshow(I),title('original');
z = 4;
for c = .5:.5:3
[M,N]=size(Id);
        for x = 1:M
            for y = 1:N
                In(x,y)=c*log(1+Id(x,y));
            end
        end
subplot(3,3,z),imshow(In),title(c);
z=z+1;
end

In = Id;
c = input('Enter the value of c : ');
r = input('Enter the value of r : ');
[M,N]=size(Id);
figure;
subplot(1,2,1),imshow(I),title('original');
        for x = 1:M
            for y = 1:N
                In(x,y)=c*Id(x,y)^r;
            end
        end
subplot(1,2,2),imshow(In),title('After');