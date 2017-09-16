function [new_wave] = preprocess()
load('Guitar.mat')
expand = resample(realwave,10,1);
cut = reshape(expand,243,10)';
average = sum(cut,1)/10;
repeat = repmat(average,1,10);
new_wave = resample(repeat,1,10)';
subplot(1,2,1)
plot(new_wave)
subplot(1,2,2)
plot(wave2proc)
error = sum(abs(wave2proc-new_wave))