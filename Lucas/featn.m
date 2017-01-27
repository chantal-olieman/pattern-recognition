a = rr_dataset(50, 1000);

%forwards select different # of features

%4
[w,r] = featself(a,4);
a1 = a*w;
m1 = errors(a1, 10);

%4
[w,r] = featself(a,8);
a2 = a*w;
m2 = errors(a2, 10);

%4
[w,r] = featself(a,16);
a3 = a*w;
m3 = errors(a3, 10);

%4
[w,r] = featself(a,32);
a4 = a*w;
m4 = errors(a4, 10);

%64
[w,r] = featself(a,64);
a5 = a*w;
m5 = errors(a5, 10);


%optima
[w,r] = featself(a);
a6 = a*w;
m6 = errors(a6, 10);

%get size optimal
z = size(w);
featnum = z(1,2);

m = [4 8 16 32 64 featnum;m1 m2 m3 m4 m5 m6];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_nrfeat.csv',m)