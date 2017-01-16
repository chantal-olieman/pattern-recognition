function errors(train, test)
% outputs all errors of classifiers
w = parzenc(train);
parzencerror = test*w*testc;

w = knnc(train);
knncerror = test*w*testc;

w = fisherc(train);
fishercerror = test*w*testc;

w = nmc(train);
nmcerror = test*w*testc;

w = ldc(train);
ldcerror = test*w*testc;

w = qdc(train);
qdcerror = test*w*testc;

w = svc(train);
svcerror = test*w*testc;

w = loglc(train);
loglcerror = test*w*testc;



w = treec(train);
treecerror = test*w*testc;

%bpxncerror
%perlcerror

%w = perlc(train);
%perlcerror = test*w*testc;

%[w, hist, units] = bpxnc(train);
%bpxncerror = test*w*testc;

m = [knncerror; parzencerror; fishercerror; nmcerror; ldcerror; qdcerror; svcerror; loglcerror; treecerror];
csvwrite('pattern\Lucas\csvlist.csv',m)

end
