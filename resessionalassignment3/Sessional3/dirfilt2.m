% function for horizontal direction filtering
function FI = dirfilt2(I,D)
if D>1 
    h = zeros(D);
    for i = 1:D
        for j = 1:D
            if (j == ceil(D/2))
                h(i,j) = 1;
            else
                h(i,j) = 0;
            end
        end
    end
    h = h/D;
end
FI = imfilter(I,h);