function [  ] = crova( a,parts,reps )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    knncerror= prcrossval(a,knnc,parts,reps); 
    parzencerror= prcrossval(a,parzenc,parts,reps); 
    fishercerror= prcrossval(a,fisherc,parts,reps);  
    nmcerror= prcrossval(a,nmc,parts,reps); 
    k = 0
    ldcerror= prcrossval(a,ldc,parts,reps); 
    qdcerror= prcrossval(a,qdc,parts,reps); 
    k = 1
    svcerror1 = 0.9; 
    svcerror = 0.9; 
    loglcerror = prcrossval(a,loglc,parts,reps); 
    treecerror = 0.9;
   % treecerror = prcrossval(a,treec,parts,reps); 
   
    m = [knncerror; parzencerror; fishercerror; nmcerror; ldcerror; qdcerror; svcerror1; svcerror; loglcerror; treecerror];
    csvwrite('C:\Users\TU Delf SID\code\pattern-recognition\Lucas\csvlist.csv',m)

end

