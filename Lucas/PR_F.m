% dipstart.m;
a = prnist([0:9],[1:10:100]);

a_2 = (closing(a));
a_4 = opening(a_2);
b = im_box(a_4, [], 1);
c = im_resize(b, [8, 8]);
figure(1)
show(c)
% 

%a_3 = closing(a_2);
% %figure(2)
% %show(a_3)
% 

% figure(2)
% show(a_4)
% 
% 
% 
% %show(imb)

[train, test] = gendat(c,0.8);
errors(train, test);
%w = parzenc(train);
%e = test*w*testc

%knnc
%parzenc
%fisherc
%nmc
%ldc
%qdc
%bpxnc
%svc
%loglc
%perlc
%treec

