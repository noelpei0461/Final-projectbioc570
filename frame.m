clear;
%% ????
video_file='CCNE1-gfp.mp4';
video=VideoReader(video_file);
frame_number=floor(video.Duration * video.FrameRate);
%% ????
for i=1:frame_number
    image_name=strcat('ccne1\',num2str(i));
    image_name=strcat(image_name,'.jpg');
    I=read(video,i);                               %????
    imwrite(I,image_name,'jpg');                   %???
    I=[];
end