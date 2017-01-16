% dipstart.m;
%a = prnist([0:9],[1:10:100]);

%a_2 = (closing(a));
%a_4 = opening(a_2);
%b = im_box(a_4, [], 1);
%c = im_resize(b, [8, 8]);

a = rr_dataset(25,1000);
[train, test] = gendat(c,0.25);
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


