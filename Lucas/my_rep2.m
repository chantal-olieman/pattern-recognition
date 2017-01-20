function [ a ] = my_rep2( m )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%% Processing
noise_removed = opening(closing(m)); % Closed and then opened to make numbers more differentiable
boxed = im_box(noise_removed, 0, 1); % Remove unnecessary rows, colums and make images square

%% Prepare Rotation 
M = boxed*im_moments('central',[2 0; 1 1; 0 2]); % Determine moments
imList = [];
num = size(boxed,1);
labels = [];
k = 0;
featsize = [16,16];

%% Rotation procedure
for i=1:num;
    if(mod(i-1,num/10)==0 && i>1);
        k = k + 1
    end
    labels = [labels;num2str(k)];
    im = data2im(boxed(i,:));
    moment = +M(i,:);
    angle = 0.5*atan((2*moment(2))/(moment(1)-moment(3)));
    rotated_im = boxed(i,:)*im_rotate(angle);
    binary_im = im2bw(data2im(rotated_im));
    resized_binary_im = im_resize(binary_im, featsize,'bilinear');
    imList = [imList;double(resized_binary_im(:)')];
end

csvwrite('C:\Users\TU Delf SID\code\pattern-recognition\Lucas\rotated_images2.csv',imList)
a1 = prdataset(imList, labels);
a = setfeatsize(a1, featsize);


end

