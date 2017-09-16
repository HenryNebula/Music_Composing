function [song1,song2,song3] = tune_up(song)

song1 = resample(song,1,2);
song2 = resample(song,2,1);
half = round(1e4*2^(1/12));
song3 = resample(song,1e4,half);