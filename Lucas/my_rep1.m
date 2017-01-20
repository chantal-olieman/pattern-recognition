function [ a ] = my_rep1( m )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
featsize = [16,16];
boxed = im_box(m, [], 1); % Remove unnecessary rows, colums and make images square
resized_im = im_resize(boxed, featsize,'bilinear');
a = prdataset(resized_im);
end

