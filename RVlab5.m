photo=imread('dziwne.jpg');
A = rgb2gray(photo);
grey = rgb2gray(photo);

threshold =0.4;

grey = double(grey)/255;


B = grey <= threshold;
subplot(3,1,1);
imshow(A);
title('Orginal');

subplot(3,1,2);
imshow(B);
title('binarization');


h = ones(15);

E = imerode(B,h);

D = imdilate(B,h);

O = imopen(B,h);

C = imclose(B,h);
subplot(3,1,3);
imshow(C-B, []);
title('close');