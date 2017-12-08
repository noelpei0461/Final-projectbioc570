clear;
%% ????
video_file='CCNE1-gfp.mp4'; %'CCNE1-gfp.mp4' is the video of CCNE1 null Hela cell downloaded from the mito-check.org. For other genotypes, other filenames are input.
video=VideoReader(video_file);
frame_number=floor(video.Duration * video.FrameRate);
%% ????
for i=1:frame_number
    image_name=strcat('ccne1\',num2str(i)); %create filename according to their sources
    image_name=strcat(image_name,'.jpg');
    I=read(video,i);                               %generate images for each frame 
    imwrite(I,image_name,'jpg');                   %save the images
    I=[];
end
