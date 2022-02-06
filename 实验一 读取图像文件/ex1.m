clear, clc;
% tic;
% A = imread('1.jpg') % input the img
% toc;
% tic;
% whos; % show the img's size£¬byte class£¬attributes
% toc;
% tic;
% imshow(A); % show the img
% toc;
% tic;
% info = imfinfo('1.jpg')
% toc;
% tic;
% imwrite(A,'new.jpg','quality',50); % generate new zipped jpg
% toc;
% tic;
% imwrite(imread('CFig0.tif'),'flower.bmp');
% toc;
% tic;
% CFigN = imread('CFig3.png');
% FigN = imread('Fig0.tif');
% toc
% tic;
% info1 = imfinfo('CFig3.png')
% info2 = imfinfo('Fig0.tif')
% toc;
% tic;
% imshow(CFigN);
% figure
% imshow(FigN);
% toc;
tic;
BW = im2bw(FigN,0.4);
imshow(FigN), figure, imshow(BW)
toc;





