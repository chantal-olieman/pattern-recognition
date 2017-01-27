% dipstart.m;
%a = prnist([0:9],[1:10:100]);

%a_2 = (closing(a));
%a_4 = opening(a_2);
%b = im_box(a_4, [], 1);
%c = im_resize(b, [8, 8]);

a = rr_dataset(200,1000); %50,1000 = 200

%[train, test] = gendat(a,0.2);

errors(a,0.1,10);

% a1 = prnist([0:9],[1:50:1000]);
% a1 = im_box(a1, [], 1);
% featsize = [16,16];
% %a1 = (opening(closing(a1)));
% c = prdataset(im_resize(a1, featsize));
% errors(c,0.1,30);


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


