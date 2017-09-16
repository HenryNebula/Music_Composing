function [base,harmo] = fetch_base(tune_freq,mag_freq)
threshold = 0.04;
down = 1 - threshold;
up = 1 + threshold;
% tune_freq and mag_freq are cells
base = cell(length(tune_freq),1);
harmo = cell(length(tune_freq),10); %ten base max
for i = 1:length(tune_freq)
    tune = tune_freq{i};
    mag = mag_freq{i};
    base{i} = [];  
    count = 0; %count the number of mixed tunes
    
    while length(mag(mag == 0)) ~= length(mag)
        [max_v,max_i] = max(mag);
        peak = [tune(max_i),max_v];
               
        %now find the base if any exists below this freq (amplitude threshold is needed)
        for k = max_i:-1:1
            if tune(max_i) > tune(k) * down * 2 && tune(max_i) < tune(k) * up * 2 && mag(max_i)/mag(k) < 2
                peak(1) = tune(k);
                peak(2) = mag(k);
                mag(k) = 0;
                break
            end
            if tune(max_i) > tune(k) * down * 3 && tune(max_i) < tune(k) * up * 3 && mag(max_i)/mag(k) < 2
                peak(1) = tune(k);
                peak(2) = mag(k);
                mag(k) = 0;
                break
            end
        end
        count = count + 1;
        
        
        %clear the magnitude of base
        if peak(1) == tune(max_i)
            mag(max_i) = 0;
        end
        
        
        %find higher harmonic waves            
        for j = 1:length(tune)
            if mag(j) == 0
                continue
            end
            if tune(j) > down * 2 * peak(1) && tune(j) < up * 2 * peak(1)      
                harmo{i,count} = [harmo{i,count};2,mag(j)/peak(2)];
                mag(j) = 0;
            elseif  tune(j) > down * 3 * peak(1) && tune(j) < up * 3 * peak(1)
                harmo{i,count} = [harmo{i,count};3,mag(j)/peak(2)];
                mag(j) = 0;
            elseif tune(j) > down * 4 * peak(1) && tune(j) < up * 4 * peak(1)
                harmo{i,count} = [harmo{i,count};4,mag(j)/peak(2)];
                mag(j) = 0;
            elseif tune(j) > down * 5 * peak(1) && tune(j) < up * 5 * peak(1)
                harmo{i,count} = [harmo{i,count};5,mag(j)/peak(2)];
                mag(j) = 0;
            elseif tune(j) > down * 6 * peak(1) && tune(j) < up * 6 * peak(1)
                harmo{i,count} = [harmo{i,count};6,mag(j)/peak(2)];
                mag(j) = 0;
            elseif tune(j) > down * 7 * peak(1) && tune(j) < up * 7 * peak(1)
                harmo{i,count} = [harmo{i,count};7,mag(j)/peak(2)];
                mag(j) = 0;
            elseif tune(j) > down * 8 * peak(1) && tune(j) < up * 8 * peak(1)
                harmo{i,count} = [harmo{i,count};8,mag(j)/peak(2)];
                mag(j) = 0;
            elseif tune(j) > down * 9 * peak(1) && tune(j) < up * 9 * peak(1)
                harmo{i,count} = [harmo{i,count};9,mag(j)/peak(2)];
                mag(j) = 0;
            elseif tune(j) > down * 10 * peak(1) && tune(j) < up * 10 * peak(1)
                harmo{i,count} = [harmo{i,count};10,mag(j)/peak(2)];
                mag(j) = 0;
            end
            
        end
        %modify the tune
        peak(1) = modify(peak(1));
        base{i} = [base{i};peak];
    end
end