function errors(a, p, n)

% outputs all errors of classifiers
parzencerror = 0;
knncerror = 0;
fishercerror = 0;
nmcerror = 0;
ldcerror = 0;
qdcerror = 0;
svcerror = 0;
loglcerror = 0;
treecerror = 0;
for i=1:n;
    [train,test] = gendat(a,p);
    w = parzenc(train);
    parzencerror = parzencerror + test*w*testc;
    
    w = knnc(train);
    knncerror = knncerror + test*w*testc;
    
    w = fisherc(train);
    fishercerror = fishercerror + test*w*testc;
    
    w = nmc(train);
    nmcerror = nmcerror + test*w*testc;
    
    w = ldc(train);
    ldcerror = ldcerror + test*w*testc;
    
    w = qdc(train);
    qdcerror = qdcerror + test*w*testc;
    
    w = svc(train);
    svcerror = svcerror + test*w*testc;
    
    w = loglc(train);
    loglcerror = loglcerror + test*w*testc;
    
    
    
    w = treec(train);
    treecerror = treecerror + test*w*testc;
    
    %bpxncerror
    %perlcerror
    
    %w = perlc(train);
    %perlcerror = test*w*testc;
    
    %[w, hist, units] = bpxnc(train);
    %bpxncerror = test*w*testc;
end

m = [knncerror; parzencerror; fishercerror; nmcerror; ldcerror; qdcerror; svcerror; loglcerror; treecerror]/n;
csvwrite('C:\Users\Francesca\Documents\TU\csvlist.csv',m)

end
