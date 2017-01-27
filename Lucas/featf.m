a = rr_dataset(50, 1000);

%select optimal 32 features and compare
%backwards 
[w,r] = featselb(a,32);
a1 = a*w;
m1 = errors(a1, 10);

%forwards 
[w,r] = featself(a,32);
a2 = a*w;
m2 = errors(m2, 10);

%backwards select optimal # features
[w,r] = featselb(a);
a1 = a*w;
m1 = errors(a1, 10);

%forwards select optimal # features 
[w,r] = featself(a);
a2 = a*w;
m2 = errors(m2, 10);
 