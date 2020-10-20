f = imread('peppers.bmp');

%---part1---%
%fs setting
sx = 0.85;
sy = 1.15;
T1 = [sx 0 0
      0 sy 0 
      0 0 1];
t1 = affine2d(T1);
fs = imwarp(f, t1);

%fsr setting
theta = pi/6;
T2 = [cos(theta)  sin(theta) 0
      -sin(theta) cos(theta) 0        
      0           0          1];
t2 = affine2d(T2);
fsr = imwarp(f, t2);

%fss setting
alpha = 0.75;
T3 = [1     0 0
      alpha 1 0 
      0     0 1];
t3 = affine2d(T3);
fss = imwarp(fs, t3);

%output
figure(1),
subplot(2, 2, 1);
imshow(f);
title('f','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 2);
imshow(fs);
title('fs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 3);
imshow(fsr);
title('fsr','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 2, 4);
imshow(fss);
title('fss','fontname','雅痞-繁','Color','k','FontSize',14);

%select point
cpselect(fs, f);
cpselect(fsr, f);
cpselect(fss, f);
save('fs_movingPoints_4.mat', 'fs_movingPoints_4'); 
save('fs_fixedPoints_4.mat', 'fs_fixedPoints_4');
save('fs_movingPoints_8.mat', 'fs_movingPoints_8'); 
save('fs_fixedPoints_8.mat', 'fs_fixedPoints_8');

save('fsr_movingPoints_4.mat', 'fsr_movingPoints_4'); 
save('fsr_fixedPoints_4.mat', 'fsr_fixedPoints_4');
save('fsr_movingPoints_8.mat', 'fsr_movingPoints_8'); 
save('fsr_fixedPoints_8.mat', 'fsr_fixedPoints_8');

save('fss_movingPoints_4.mat', 'fs_movingPoints_4'); 
save('fss_fixedPoints_4.mat', 'fs_fixedPoints_4');
save('fss_movingPoints_8.mat', 'fss_movingPoints_8'); 
save('fss_fixedPoints_8.mat', 'fss_fixedPoints_8');

%---part2---%
%校正
tietform = fitgeotrans(fs_movingPoints_4, fs_fixedPoints_4, 'affine');
fs2_4 = imwarp(fs, tietform);
%校正
tietform = fitgeotrans(fs_movingPoints_8, fs_fixedPoints_8, 'affine');
fs2_8 = imwarp(fs, tietform);
%與原圖比較
fs_difference_4 = imresize(f, [256, 256]) - imresize(fs2_4, [256, 256]);
fs_difference_8 = imresize(f, [256, 256]) - imresize(fs2_8, [256, 256]);

%output
figure(2),
subplot(2, 3, 1);
imshow(f);
title('f','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 4);
imshow(fs);
title('fs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 2);
imshow(fs2_4);
title('transformation with 4 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 5);
imshow(fs2_8);
title('transformation with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 3);
imshow(fs_difference_4);
title('difference with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 6);
imshow(fs_difference_8);
title('difference with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);


%---part3---%
%校正&除去黑框
tietform = fitgeotrans(fsr_movingPoints_4, fsr_fixedPoints_4, 'affine');
fsr2_4 = imwarp(fsr, tietform);
[x1, y1] = find(fsr2_4);
fsr2_4_processed = fsr2_4(min(x1):max(x1),min(y1):max(y1));
%校正&除去黑框
tietform = fitgeotrans(fsr_movingPoints_8, fsr_fixedPoints_8, 'affine');
fsr2_8 = imwarp(fsr, tietform);
[x2, y2] = find(fsr2_8);
fsr2_8_processed = fsr2_8(min(x2):max(x2),min(y2):max(y2));
%與原圖比較
fsr_difference_4 = imresize(f, [256, 256]) - imresize(fsr2_4_processed, [256, 256]);
fsr_difference_8 = imresize(f, [256, 256]) - imresize(fsr2_8_processed, [256, 256]);

%output
figure(3),
subplot(2, 3, 1);
imshow(f);
title('f','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 4);
imshow(fsr);
title('fsr','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 2);
imshow(fsr2_4_processed);
title('transformation with 4 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 5);
imshow(fsr2_8_processed);
title('transformation with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 3);
imshow(fsr_difference_4);
title('difference with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 6);
imshow(fsr_difference_8);
title('difference with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);

%---part4---%
%校正&除去黑框
tietform = fitgeotrans(fss_movingPoints_4, fss_fixedPoints_4, 'affine');
fss2_4 = imwarp(fss, tietform);
[x3, y3] = find(fss2_4);
fss2_4_processed = fss2_4(min(x3):max(x3),min(y3):max(y3));
%校正&除去黑框
tietform = fitgeotrans(fss_movingPoints_8, fss_fixedPoints_8, 'affine');
fss2_8 = imwarp(fss, tietform);
[x4, y4] = find(fss2_8);
fss2_8_processed = fss2_8(min(x4):max(x4),min(y4):max(y4));
%與原圖比較
fss_difference_4 = imresize(f, [256, 256]) - imresize(fss2_4_processed, [256, 256]);
fss_difference_8 = imresize(f, [256, 256]) - imresize(fss2_8_processed, [256, 256]);

%output
figure(4),
subplot(2, 3, 1);
imshow(f);
title('f','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 4);
imshow(fss);
title('fss','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 2);
imshow(fss2_4_processed);
title('transformation with 4 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 5);
imshow(fss2_8_processed);
title('transformation with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 3);
imshow(fss_difference_4);
title('difference with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
subplot(2, 3, 6);
imshow(fss_difference_8);
title('difference with 8 pairs','fontname','雅痞-繁','Color','k','FontSize',14);
