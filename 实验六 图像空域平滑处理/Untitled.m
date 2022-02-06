clc, clear, close all
I = imread('Fig2.tif');
R1 = imnoise(I,'gaussian'); % 加入高斯噪声，当然，还可以自定义很多参数
R2 = imnoise(I,'salt & pepper'); % 加入椒盐噪声，当然，还可以自定义很多参数
subplot(4,3,1), imshow(I)
subplot(4,3,2), imshow(R1)
subplot(4,3,3), imshow(R2)
subplot(4,3,4), imshow(I)
% 定义卷积模板
pattern1 = ones(3,3)*(1/9); % 最简单的3x3全1矩阵，领域平均法
pattern2 = ones(3,3); % 另一个如下所述的滤波器
pattern2(1,:) = [1,2,1];
pattern2(2,:) = [2,4,2];
pattern2(3,:) = [1,2,1];
pattern2 = pattern2*(1/16);
F1 = imfilter(R1,pattern1,'conv');
subplot(4,3,5), imshow(F1)
F2 = imfilter(R2,pattern1,'conv');
subplot(4,3,6), imshow(F2)
subplot(4,3,7), imshow(I)
F3 = imfilter(R1,pattern2,'conv');
subplot(4,3,8), imshow(F3)
F4 = imfilter(R2,pattern2,'conv');
subplot(4,3,9), imshow(F4)
pattern3 = ones(3,3); % 另一个如下所述的滤波器
pattern3(1,:) = [1,1,1];
pattern3(2,:) = [1,0,1];
pattern3(3,:) = [1,1,1];
pattern3 = pattern3*(1/8);
subplot(4,3,10), imshow(I)
F5 = imfilter(R1,pattern3,'conv');
subplot(4,3,11), imshow(F5)
F6 = imfilter(R2,pattern3,'conv');
subplot(4,3,12), imshow(F6)