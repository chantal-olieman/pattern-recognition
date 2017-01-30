
steps = [100, 50, 10, 10];
%for i = 1:4
 %   if(i ~= 1)
     featn(steps(3), 'NN', true);
  %  end
    featn(steps(3), 'NN', false);
    featn(steps(3), 'in-in', true);
    featn(steps(3), 'in-in', false);
    featn(steps(3), 'eucl-m', true);
    featn(steps(3), 'eucl-m', false);
    featn(steps(3), 'eucl-s', true);
    featn(steps(3), 'eucl-s', false);
%end 