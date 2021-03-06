function FImage=directionalFilter(image,dimension,direction)
if(dimension>1)
    i=1;
    j=1;
    filter=[dimension dimension];
    while(i<=dimension)
        j=1;
       while(j<=dimension)
           if(strcmp(direction,'Horizontal'))
               if(i==cast(dimension/2,'uint8'))
                   filter(i,j)=1;
               else
                   filter(i,j)=0;
               end
           elseif(strcmp(direction,'Vertical'))
               if(j==cast(dimension/2,'uint8'))
                   filter(i,j)=1;
               else
                   filter(i,j)=0;
               end
           elseif(strcmp(direction,'MainDiagonal'))
               if(i==j)
                   filter(i,j)=1;
               else
                   filter(i,j)=0;
               end
           elseif(strcmp(direction,'OffDiagonal'))
               if(j==dimension-(i-1))
                   filter(i,j)=1;
               else
                   filter(i,j)=0;
               end
           end
           j=j+1;
       end
       i=i+1;
    end
    filter=filter/dimension;
else
    filter=[1];
end
FImage=imfilter(image,filter);

