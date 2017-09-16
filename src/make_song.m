function [song] = make_song(mix,base)
x = [1:1:24000]/8000;
% mix = zeros(9,2);
if base ~= 0
    song = sin(2*pi*base*x);
    new_song = zeros(size(song));
    for i = 1:size(mix,1)
        if mix(i,2) == 0
            continue
        end
        harmo_song = mix(i,2)*sin(2*pi*base*mix(i,1)*x);
        new_song = new_song + harmo_song;
    end
    song = song + new_song;

    song = song/max(song);
else
    song = zeros(size(x));
end