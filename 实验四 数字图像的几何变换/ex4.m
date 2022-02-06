I = imread('init.jpg');
tic
tform = maketform('affine',[1 0 0; .5 1 0; 0 0 1]);
J = imtransform(I,tform);
toc
imshow(J)
tic
I_out=imtransform(I,tform,'XData',[1 size(I,2)],'YData',[1 size(I,1)]);
toc
imshow(I_out)