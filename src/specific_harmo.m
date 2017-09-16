function [harmo] = specific_harmo(mix)

low_bound = 110;
table = 2.^([0:1:48]/12);
base_tune = low_bound * table;
harmo = cell(length(base_tune),2);

for i = 1 :length(harmo)
    harmo{i,1} = base_tune(i);
    harmo{i,2} = mix;
end