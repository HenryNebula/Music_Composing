function [patch,combine_harmo] = song_analysis(song,fs)

[tune_freq,mag_freq,time] = tune_analysis(song,fs);
[base,harmo] = fetch_base(tune_freq,mag_freq);
[tune_table,combine_harmo] = create_harmo(base,harmo);
combine_harmo = complement(combine_harmo);
patch = cell(length(time),3);
count = 1;
for i  = 1: size(patch,1)
    if time(i) > 0.1
        patch{count,1} = trans_tune(tune_table{count,1});
        patch{count,2} = trans_tune(tune_table{count,2});
        patch{count,3} = trans_time(time(count));%0.5s is the unit
        count = count + 1;
    end
end
end
 
function [tune_name] = trans_tune(freq)
low_bound = 110;
table = 2.^([0:1:48]/12);
base_tune = low_bound * table;
Name = [' A2';'bB2';' B2';' C3';'bD3';' D3';'bE3';' E3';' F3';'bG3';' G3';'bA3';...
        ' A3';'bB3';' B3';' C4';'bD4';' D4';'bE4';' E4';' F4';'bG4';' G4';'bA4';...
        ' A4';'bB4';' B4';' C5';'bD5';' D5';'bE5';' E5';' F5';'bG5';' G5';'bA5';...
        ' A5';'bB5';' B5';' C6';'bD6';' D6';'bE6';' E6';' F6';'bG6';' G6';'bA6';' A6'];
tune_name = [];
for i = 1:length(freq)
    idx = find(base_tune == freq(i));
    tune_name = [tune_name;Name(idx,:)];
end
end

function [new_time] = trans_time(part_time)
new_time = round((part_time*8))/4;
end
