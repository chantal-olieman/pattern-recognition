function result = opening(a)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

a_b = a*filtim('im_berosion_f');
result = a_b*filtim('im_bdilation_f');
end

