function [modified_tune,ind] = modify(tune)
low_bound = 110;
table = 2.^([0:1:48]/12);
base_tune = low_bound * table;
modified_tune = tune;
ind = 1;
for i = 1:length(table)
    if tune > 0.97 * base_tune(i) && tune < 1.03 * base_tune(i)
        modified_tune = base_tune(i);
        ind = 0;
        break
    end
end
if ind
    disp('Warning')
end
