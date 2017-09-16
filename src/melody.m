function [freq] = melody(my_tune)
switch upper(my_tune)
          case 'C'
            start = 110*2^(15/12);
          case 'D'
            start = 110*2^(17/12);
          case 'E'
            start = 110*2^(19/12);
          case 'F'
            start = 110*2^(20/12);
          case 'G'
            start = 110*2^(22/12);
          case 'A'
            start = 440;
          case 'B'
            start = 440*2^(1/12);
    otherwise
            start = 0;
            disp('Unknown tune.')
end
stage = 1/12*[0,2,4,5,7,9,11];
freq = start*2.^stage;




