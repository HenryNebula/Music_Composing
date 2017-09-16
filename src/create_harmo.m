function [tune_table,combine_harmo] = create_harmo(base,harmo)
% both the input are cells
% both the output are cells
tune_table = cell(size(base,1),2);

low_bound = 110;
table = 2.^([0:1:48]/12);
base_tune = low_bound * table;
combine_harmo = cell(length(base_tune),2);

for i = 1:size(combine_harmo,1)
    combine_harmo{i,1} = base_tune(i);
end

for i = 1:size(base,1)
    raw_base = base{i};
    if isempty(base{i})
        continue
    end
    raw_base = raw_base(:,1);%the second col are amp, useless
    tune_table{i,1} = raw_base(1);
    tune_table{i,2} = raw_base(2:end);
    for m = 1:length(raw_base)
        row = find(cellfun(@(x) ismember(raw_base(m),x),combine_harmo));%find the correct tune(modified)
        combine_harmo{row,2} = [combine_harmo{row,2};harmo{i,m}];%add to below
    end
end

%take average of harmonic waves

for i = 1:size(combine_harmo,1)
    new_mix = combine_harmo{i,2};
    new_harmo = zeros(9,2);
    new_harmo(:,1) = [2:1:10]';
    if isempty(new_mix)
        combine_harmo{i,2} = new_harmo;
        continue
    end
    sortrows(new_mix,1);
    for times = 2:10
        sum = 0;
        rows = find(new_mix(:,1) == times);
        if ~isempty(rows)
            for h = 1:length(rows)
                sum = sum + new_mix(rows(h),2);
            end
            sum = sum / length(rows);
        end
        new_harmo(times-1,2) = sum;
    end
    combine_harmo{i,2} = new_harmo;
end

