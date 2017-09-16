function [new_harmo] = complement(raw)
new_harmo = raw;
for i = 26:size(new_harmo,1)
    mix1 = new_harmo{i-24,2};
    mix2 = new_harmo{i,2};
    if ~any(mix1(:,2)) && ~any(mix2(:,2))
        continue
    elseif ~any(mix2(:,2))
        new_harmo{i,2} = new_harmo{i-24,2};
    
    elseif ~any(mix1(:,2))
        new_harmo{i-24,2} =  new_harmo{i,2};
    end  
end

for i = 1:size(new_harmo,1)
    mix = new_harmo{i,2};
    if ~any(mix(:,2))
        count = 0;
        while i+count <= size(new_harmo,1) || i-count > 0
            if i+count <= size(new_harmo,1)
                mix2 = new_harmo{i+count,2};
                if any(mix2(:,2))
                new_harmo{i,2} = mix2;
                break;
                end
            end
            if i - count > 0
                mix2 = new_harmo{i-count,2};
                if any(mix2(:,2))
                new_harmo{i,2} = mix2;
                break;
                end
            end
            count = count + 1;
        end
    end
end