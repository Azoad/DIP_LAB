club = imread('card_club.tif');
diamond = imread('card_diamond.tif');
heart = imread('card_heart.tif');
spade = imread('card_spade.tif');

club_stat = regionprops(club,'centroid','area','perimeter','boundingbox');
diamond_stat = regionprops(diamond,'centroid','area','perimeter','boundingbox');
heart_stat = regionprops(heart,'centroid','area','perimeter','boundingbox');
spade_stat = regionprops(spade,'centroid','area','perimeter','boundingbox');

club_edge = bwperim(club);
diamond_edge = bwperim(diamond);
heart_edge = bwperim(heart);
spade_edge = bwperim(spade);

peri_club = sum(club_edge(:));
peri_diamond = sum(diamond_edge(:));
peri_heart = sum(heart_edge(:));
peri_spade = sum(spade_edge(:));

circularity_club = (4*pi*club_stat.Area)./(club_stat.Perimeter.^2);
circularity_diamond = (4*pi*diamond_stat.Area)./(diamond_stat.Perimeter.^2);
circularity_heart = (4*pi*heart_stat.Area)./(heart_stat.Perimeter.^2);
circularity_spade = (4*pi*spade_stat.Area)./(spade_stat.Perimeter.^2);