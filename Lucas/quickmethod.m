a = rr_dataset(50, 1000);

% select optimal 16 features nn



%forwards 
[w,r] =  featself(a, 'NN', 64);
a2 = a*w;
m2 = errors(a2, 10);

%add size 
z = size(w);
featnum = z(1,2);
m2 = [featnum ; m2];
m = [m2];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod.csv',m)

%select optimal 16 of features 'in-in'
%forwards 
[w,r] =  featself(a, 'in-in', 64);
a4 = a*w;
m4 = errors(a4, 10);

%add size 
z = size(w);
featnum = z(1,2);
m4 = [featnum ; m4];
m = [m2 m4];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod.csv',m)


%select optimal # of features 'maha-m'

%forwards 
[w,r] =  featself(a, 'maha-m', 64);
a6 = a*w;
m6 = errors(a6, 10);

%add size 
z = size(w);
featnum = z(1,2);
m6 = [featnum ; m6];

m = [m2 m4 m6];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod_quick64.csv',m)