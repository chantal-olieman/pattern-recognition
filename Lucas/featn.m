function featn(step, crit, proces)

if(proces == true)
   a = rr_dataset(step, 1000);
else
   a = prnist([0:9],[1:step:1000]);
   a = my_rep1(a);
end    
  
%forwards select different # of features

%4
[w,r] = featself(a,crit,8);
a1 = a*w;
m1 = errors(a1, 10);
m = [8;m1];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_nrfeat.csv',m)

%4
[w,r] = featself(a,crit,16);
a2 = a*w;
m2 = errors(a2, 10);
m = [8 16;m1 m2];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_nrfeat.csv',m)
%4
[w,r] = featself(a,crit,32);
a3 = a*w;
m3 = errors(a3, 10);
m = [8 16 32;m1 m2 m3];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_nrfeat.csv',m)
%4
[w,r] = featself(a,crit,64);
a4 = a*w;
m4 = errors(a4,10);
m = [8 16 32 64;m1 m2 m3 m4];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_nrfeat.csv',m)

%64
[w,r] = featself(a,crit,128);
a5 = a*w;
m5 = errors(a5, 10);
m = [8 16 32 64 128 ;m1 m2 m3 m4 m5];
csvwrite('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\csvlist_nrfeat.csv',m)


% optima
% [w,r] = featself(a, 'NN', 0);
% a6 = a*w;
% m6 = errors(a6, 10);
% 
% get size optimal
% z = size(w);
% featnum = z(1,2);

m = [4 8 16 32 64;m1 m2 m3 m4 m5];

if(proces == true)
    filename = strcat('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\Binchrun\preprocessed_', crit, '.csv');
else 
    filename = strcat('C:\Users\Chantal Olieman\Projects\pattern-recognition\Results\Binchrun\rough_', crit, '.csv');
end

csvwrite(filename,m)
end 