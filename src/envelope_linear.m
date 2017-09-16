function [cover] = envelope_linear(time,choice)
if nargin<2
   choice = 1;
end
% time is number of sample pts
s = linspace(1,time,time);
t = ones(size(s));
switch choice
    case 0
    up = 0.1;%former 0.0002
    mid = 0.7;
    t(1:round(up*time)) = 1/(time*up)*s(1:round(up*time));
%     t(round(up*time):end) = exp(-(s(round(up*time):end)-time*up)*2*log(10)/(1-up)/time);
    t(round(mid*time):end) = exp(-(s(round(mid*time):end)-time*mid)*2*log(10)/(1-mid)/time);
    case 1
%     up = 0.02;%former 0.0002
    up = 80/time;
    t(1:round(up*time)) = 1/(time*up)*s(1:round(up*time));
    t(round(up*time):end) = exp(-(s(round(up*time):end)-time*up)*2*log(6)/(1-up)/time);%4 for guitar    
end
cover = t;      

