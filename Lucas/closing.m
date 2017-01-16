function result = closing(a)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

a_b = a*filtim('im_bdilation_f');
result = a_b*filtim('im_berosion_f');
end

