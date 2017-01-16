% dipstart.m;
%a = prnist([0:9],[1:10:100]);

%a_2 = (closing(a));
%a_4 = opening(a_2);
%b = im_box(a_4, [], 1);
%c = im_resize(b, [8, 8]);

a = prnist([0:9],[1:1:20]);
im = data2im(a(5,:));
figure(1)
show(im)

M = a*im_moments('central',[2 0; 1 1; 0 2]);
moment = +M(5,:);
angle = 0.5*atan((2*moment(2))/(moment(1)-moment(3)));
rotated = a(5,:)*im_rotate(angle);
% rotated = im_rotate(a, M);
figure(2)
show(rotated)


figure(3)
show(im2bw(data2im(rotated)))
%angle = sin(0.5*pi)-2*moment2;
% tform = maketform('affine',[1 0.5 0; 0 1 0; 0 0 1]);
% J = imtransform(im,tform);
% imshow(im), figure, imshow(J)
% 
% a_2 = (closing(a));
% a_4 = opening(a_2);
% b = im_box(a_4, [], 1);
% c = im_resize(b, [20, 20]);
% 
% %figure(1)
% %show(c)
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
% [train, test] = gendat(c,0.5);
% eList = [];
% 
% w = knnc(train);
% eList = [eList; test*w*testc];
% w = parzenc(train);
% eList = [eList; test*w*testc];
% w = fisherc(train);
% eList = [eList; test*w*testc];
% w = fisherc(train);
% eList = [eList; test*w*testc];
% w = nmc(train);
% eList = [eList; test*w*testc];
% w = ldc(train);
% eList = [eList; test*w*testc];
% w = qdc(train);
% eList = [eList; test*w*testc];
% w = svc(train);
% eList = [eList; test*w*testc];
% w = loglc(train);
% eList = [eList; test*w*testc];
% w = loglc(train);
% eList = [eList; test*w*testc];
% % knnc
% % parzenc
% % fisherc
% % nmc
% % ldc
% % qdc
% % svc
% % loglc
% % bpxnc
% % perlc
% % treec


