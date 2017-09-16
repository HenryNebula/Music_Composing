function [finish] = compose(harmo,notation,base,choice)
if nargin<4
   choice = 1;
end
main_freq = melody(base);
%-11 to -17 more lower; -1 to -7 lower part; 1-7 medium part; 11-17 higher part; 21-27 more higher
number = notation(1:end-1,:);
tune = zeros(size(number));
for row = 1:size(number,1)
    for col = 1:size(number,2)
        temp = number(row,col);
        if temp <= -11 && temp >= -17
            temp = -temp - 10;
            tune(row,col) = main_freq(temp)/4;
        elseif temp >= 11 && temp <= 17
            temp = temp - 10;
            tune(row,col) = main_freq(temp)*2;         
        elseif temp >= 1 && temp <= 7
            tune(row,col) = main_freq(temp); 
        elseif temp <= -1 && temp >= -7
            temp = -temp;
            tune(row,col) = main_freq(temp)/2;
        elseif temp >= 21 && temp <=27
            temp = temp - 20;
            tune(row,col) = main_freq(temp)*4; 
        end
    end
end
beat = notation(end,:);
finish = [];
for m = 1:size(tune,2)%number of beats,0.5s as one beat
    part = zeros(1,24000);%initial length 24000
    for i = 1:size(tune,1) %number of track
       mix = zeros(9,2);
       for h = 1:size(harmo,1)
           if tune(i,m) > 0.99*harmo{h,1} && tune(i,m) < 1.01*harmo{h,1}
               mix = harmo{i,2};
               break
           end
       end
       prod = make_song(mix,tune(i,m));
       if i == 2
           weight = 0.5;
       elseif i == 3
           weight = 0.3;
       elseif i ==4
           weight = 0.2;
       else 
           weight = 1;
       end
       part = part + weight * prod;
    end
    part = part(1:beat(m)*4000).*envelope_linear(beat(m)*4000,choice);
%     part = part(1:beat(m)*4000);
    finish = [finish,part];
end

