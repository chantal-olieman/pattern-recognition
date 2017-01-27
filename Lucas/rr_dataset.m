function [ a ] = rr_dataset( steps, upper )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

a = prnist([0:9],[1:steps:upper]);


%% Processing
noise_removed = closing(opening(a));

%% Prepare Rotation 
M = noise_removed*im_moments('central',[2 0; 1 1; 0 2]); % Determine moments
imList = [];
num = size(noise_removed,1);
labels = [];
k = 0;
featsize = [16,16];

%% Rotation procedure
for i=1:num;
    if(mod(i-1,num/10)==0 && i>1);
        k = k + 1;
    end
    labels = [labels;num2str(k)];
    im = data2im(noise_removed(i,:));
    moment = +M(i,:);
    angle = 0.5*atan((2*moment(2))/(moment(1)-moment(3)));
    rotated_im = noise_removed(i,:)*im_rotate(angle);
    binary_im = im2bw(data2im(rotated_im));
    resized_binary_im = im_resize(binary_im, featsize,'bilinear');
    imList = [imList;double(resized_binary_im(:)')];
end

%csvwrite('C:\Users\Francesca\Documents\TU\rotated_images223.csv',imList)
a1 = prdataset(imList, labels);
a = setfeatsize(a1, featsize);

a = a*filtim('extractHOGFeatures',{'Cellsize',[4 4]});


end



% a = im_box(a, [], 1);
% featsize = [16,16];
% a = ((closing(opening(a))));
% figure(1)
% show(a)
% %processed_a = opening(closing(a));
% %boxed = im_box(processed_a, [], 1);
% %resized = im_resize(boxed, [20, 20]);
% M = a*im_moments('central',[2 0; 1 1; 0 2]);
% imList = [];
% num =upper/steps;
% labels = [];
% k = 0;
% for i=1:10*num;
%     if(mod(i-1,num)==0 && i>1);
%         k = k + 1;
%     end
%     labels = [labels;num2str(k)];
%     im = data2im(a(i,:));
%     moment = +M(i,:);
%     angle = 0.5*atan((2*moment(2))/(moment(1)-moment(3)));
%     rotated_im = a(i,:)*im_rotate(angle);
%     binary_im = im2bw(data2im(rotated_im));
%     resized_binary_im = im_resize(binary_im, featsize);
%     imList = [imList;double(resized_binary_im(:)')];
% end
% 
% a2 = prdataset(imList, labels);
% a1 = setfeatsize(a2, featsize);
% % figure(2)
% % show(a1)
% % %a1 = (opening(closing(a2)));
% visualization = a1*filtim('extractHOGFeatures',{'Cellsize',[4 4]});
% %[hog1,visualization] = extractHOGFeatures(I1,'CellSize',[32 32]);
% 
% a1 = visualization;
% %show(visualization);
% 
% end
% 
