function [base,result] = f_analysis()
load('Guitar.mat')
f0 = abs(fft((wave2proc))); 
f = abs(fft((repmat(wave2proc',1,100)))); 
subplot(2,1,1)
plot(f0)
subplot(2,1,2)
plot(f)
[amp,loc] = findpeaks(f(1:floor(length(f)/2)+1),'MinPeakHeight',1/100*max(f));
loc = loc/length(f)*8000;
base = loc(1);
loc = round(loc/loc(1));
amp = amp/amp(1);
result = [loc;amp];