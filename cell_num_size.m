function cell_num_size

% wildtype cell number
wt=[];
for tt=1:94
    str1='video4sup\';
    str2=int2str(tt);
    str3='.jpg';
    SC=[str1,str2,str3];
    img_max=imread(SC);
    smoothbackground(img_max);%smooth & background for each timepoint
    autobinary('imsmbg.tif');%autobinary mask
    clean('BW.tif',5);
    BW2=imread('BW2.tif');
    stats=regionprops(BW2, 'Centroid','Area');
    a1 = cat(1, stats.Centroid);
    a2 = cat(1, stats.Area);
    wt(tt)=length(a1);
    wt_s(tt)=mean(a2);
end
[F1, p1, sm1, ~]=fit_logistic(1:94,wt);
figure(1)
scatter(1:94,wt)
hold on
plot(1:94,F1)
curve_label=strcat(num2str(p1(2)),'/(1+exp(-',num2str(p1(3)),'*(t-',num2str(p1(1)),')');
legend('experimental data',curve_label);
xlabel('time')
ylabel('number of cells')
disp('Confidence interval')
disp(sm1(3))

% cdk2 knockout
cdk2=[];
for tt=1:94
    str1='cdk2\';
    str2=int2str(tt);
    str3='.jpg';
    SC=[str1,str2,str3];
    img_max=imread(SC);
    smoothbackground(img_max);%smooth & background for each timepoint
    autobinary('imsmbg.tif');%autobinary mask
    clean('BW.tif',5);
    BW2=imread('BW2.tif');
    stats=regionprops(BW2, 'Centroid','Area');
    a1 = cat(1, stats.Centroid);
    a2 = cat(1, stats.Area);
    cdk2(tt)=length(a1);
    cdk2_s(tt)=mean(a2);
end
[F2, p2, sm2, varcov2]=fit_logistic(1:94,cdk2);
figure(2)
scatter(1:94,cdk2)
hold on
plot(1:94,F2)
curve_label=strcat(num2str(p2(2)),'/(1+exp(-',num2str(p2(3)),'*(t-',num2str(p2(1)),')');
legend('experimental data',curve_label);
xlabel('time')
ylabel('number of cells')

disp('Confidence interval')
disp(sm2(3))

% cdk4 knockout
cdk4=[];
for tt=1:93
    str1='video3sup\';
    str2=int2str(tt);
    str3='.jpg';
    SC=[str1,str2,str3];
    img_max=imread(SC);
    smoothbackground(img_max);%smooth & background for each timepoint
    autobinary('imsmbg.tif');%autobinary mask
    clean('BW.tif',5);
    BW2=imread('BW2.tif');
    stats=regionprops(BW2, 'Centroid','Area');
    a1 = cat(1, stats.Centroid);
    a2 = cat(1, stats.Area);
    cdk4(tt)=length(a1);
    cdk4_s(tt)=mean(a2);
end
[F3, p3, sm3, varcov3]=fit_logistic(1:93,cdk4);
figure(3)
scatter(1:93,cdk4)
hold on
plot(1:93,F3)
curve_label=strcat(num2str(p3(2)),'/(1+exp(-',num2str(p3(3)),'*(t-',num2str(p3(1)),')');
legend('experimental data',curve_label);
xlabel('time')
ylabel('number of cells')

disp('Confidence interval')
disp(sm3(3))

% ccnd1 knockout
ccnd1=[];
for tt=1:95
    str1='ccnd1\';
    str2=int2str(tt);
    str3='.jpg';
    SC=[str1,str2,str3];
    img_max=imread(SC);
    smoothbackground(img_max);%smooth & background for each timepoint
    autobinary('imsmbg.tif');%autobinary mask
    clean('BW.tif',5);
    BW2=imread('BW2.tif');
    stats=regionprops(BW2, 'Centroid','Area');
    a1 = cat(1, stats.Centroid);
    a2 = cat(1, stats.Area);
    ccnd1(tt)=length(a1);
    ccnd1_s(tt)=mean(a2);
end
[F4, p4, sm4, varcov4]=fit_logistic(1:95,ccnd1);
figure(4)
scatter(1:95,ccnd1)
hold on
plot(1:95,F4)
curve_label=strcat(num2str(p4(2)),'/(1+exp(-',num2str(p4(3)),'*(t-',num2str(p4(1)),')');
legend('experimental data',curve_label);
xlabel('time')
ylabel('number of cells')

disp('Confidence interval')
disp(sm4(3))

% ccne1 knockout
ccne1=[];
for tt=1:94
    str1='ccne1\';
    str2=int2str(tt);
    str3='.jpg';
    SC=[str1,str2,str3];
    img_max=imread(SC);
    smoothbackground(img_max);%smooth & background for each timepoint
    autobinary('imsmbg.tif');%autobinary mask
    clean('BW.tif',5);
    BW2=imread('BW2.tif');
    stats=regionprops(BW2, 'Centroid','Area');
    a1 = cat(1, stats.Centroid);
    a2 = cat(1, stats.Area);
    ccne1(tt)=length(a1);
    ccne1_s(tt)=mean(a2);
end
[F5, p5, sm5, varcov5]=fit_logistic(1:94,ccne1);
figure(5)
scatter(1:94,ccne1)
hold on
plot(1:94,F5)
curve_label=strcat(num2str(p5(2)),'/(1+exp(-',num2str(p5(3)),'*(t-',num2str(p5(1)),')');
legend('experimental data',curve_label);
xlabel('time')
ylabel('number of cells')

disp('Confidence interval')
disp(sm5(3))

figure(6)
scatter(1:94,wt_s)
xlabel('time')
ylabel('average size of cell (pixel)')
figure(7)
scatter(1:94,cdk2_s)
xlabel('time')
ylabel('average size of cell (pixel)')
figure(8)
scatter(1:93,cdk4_s)
xlabel('time')
ylabel('average size of cell (pixel)')
figure(9)
scatter(1:95,ccnd1_s)
xlabel('time')
ylabel('average size of cell (pixel)')
figure(10)
scatter(1:94,ccne1_s)
xlabel('time')
ylabel('average size of cell (pixel)')
end