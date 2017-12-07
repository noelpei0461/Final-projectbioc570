
v=VideoWriter('movie2.avi','Uncompressed AVI');
open(v);
for tt=1:93
    str1='video4sup\';
    str2=int2str(tt);
    str3='.jpg';
    SC=[str1,str2,str3];
    img_max=imread(SC);
    smoothbackground(img_max);%smooth & background for each timepoint
    autobinary('imsmbg.tif');%autobinary mask
    clean('BW.tif',5);
    BW2=imread('BW2.tif');
    imwrite(BW2,'myMultipageFile2.tif','WriteMode','append');
    A=im2double(BW2);
    writeVideo(v,A);%write in a movie
end
close(v);