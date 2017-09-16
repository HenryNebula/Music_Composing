function [tune_freq,mag_freq,time] = tune_analysis(song,fs)
song = double(song);
song = song / max(abs(song));
FrameLen = 240;    
inc = 80;                               
amp = sum((abs(enframe(filter([1 -0.9375], 1, song), FrameLen, inc))), 2);
[en,plc] = findpeaks(amp,'MinPeakProminence',3,'MinPeakDistance',0.1*fs/inc);%0.1s is the lowest bound
plc = plc * inc / fs; % get the start time of each tune (unit: second)
forward = [plc(2:end);length(song)/fs];
time = forward - plc;
tune_freq = cell(length(plc),1);
mag_freq = cell(length(plc),1);
for i = 1:length(time)
    f = abs(fft((repmat(song(floor(fs*plc(i)):floor(fs*(plc(i)+time(i)*0.8)))',1,100)))); % adopting fft transform, 0.8 for avoiding interruption
    [amp,loc] = findpeaks(f(1:floor(length(f)/2)+1),'MinPeakHeight',1/5*max(f),'MinPeakDistance',20*length(f)/fs);
    loc = loc/length(f) * fs;
    tune_freq{i} = loc;
    mag_freq{i} = amp;
end

