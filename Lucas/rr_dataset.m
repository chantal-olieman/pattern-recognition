function [ a1 ] = rr_dataset( steps, upper )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

a = prnist([0:9],[1:steps:upper]);
a = im_box(a, [], 1);

%processed_a = opening(closing(a));
%boxed = im_box(processed_a, [], 1);
%resized = im_resize(boxed, [20, 20]);
M = a*im_moments('central',[2 0; 1 1; 0 2]);
imList = [];
num =upper/steps;
labels = [];
k = 0;
for i=1:10*num;
    if(mod(i-1,num)==0 && i>1);
        k = k + 1;
    end
    labels = [labels;num2str(k)];
    im = data2im(a(i,:));
    moment = +M(i,:);
    angle = 0.5*atan((2*moment(2))/(moment(1)-moment(3)));
    rotated_im = a(i,:)*im_rotate(angle);
    binary_im = im2bw(data2im(rotated_im));
    resized_binary_im = im_resize(binary_im, [20, 20]);
    imList = [imList;double(resized_binary_im(:)')];
end

a1 = prdataset(imList, labels);

end

