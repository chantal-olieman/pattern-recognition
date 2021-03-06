a = rr_dataset(50, 1000);

% select optimal # of features nn
% backwards 
% [w,r] = featselb(a, 'NN', 0);
% a1 = a*w;
% m1 = errors(a1, 10);
% 
% add size 
% z = size(w);
% featnum = z(1,2);
% m1 = [featnum ; m1];
% m = [m1];
% csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod.csv',m)
% 
% 
% forwards 
% [w,r] =  featself(a, 'NN', 0);
% a2 = a*w;
% m2 = errors(a2, 10);
% 
% add size 
% z = size(w);
% featnum = z(1,2);
% m2 = [featnum ; m2];
% m = [m1 m2];
% csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod.csv',m)
% 
% select optimal # of features 'in-in'
% backwards 
% [w,r] =  featselb(a, 'in-in', 0);
% a3 = a*w;
% m3 = errors(a3, 10);
% 
% add size 
% z = size(w);
% featnum = z(1,2);
% m3 = [featnum ; m3];
% m = [m1 m2 m3];
% csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod.csv',m)
% 
% 
% forwards 
% [w,r] =  featself(a, 'in-in', 0);
% a4 = a*w;
% m4 = errors(a4, 10);
% 
% add size 
% z = size(w);
% featnum = z(1,2);
% m4 = [featnum ; m4];
% m = [m1 m2 m3 m4];
% csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod.csv',m)
%

%select optimal # of features 'maha-m'
%backwards 
[w,r] =  featselb(a, 'maha-m', 0);
a5 = a*w;
m5 = errors(a5, 10);

%add size 
z = size(w);
featnum = z(1,2);
m5 = [featnum ; m5];
m = [m5];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod.csv',m)

%forwards 
[w,r] =  featself(a, 'maha-m', 0);
a6 = a*w;
m6 = errors(a6, 10);

%add size 
z = size(w);
featnum = z(1,2);
m6 = [m6];

m = [m5 m6];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_optmethod.csv',m)

 