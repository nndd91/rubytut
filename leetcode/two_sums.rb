nums = [1, 2, 4, 4, 3, 2, 42, 12, 33, 11, 20]
target = 23

def two_sum(nums, target)
    @complements = {}
    for i in (0..nums.length-1)
        comkey = target.to_i - nums[i].to_i
        if !(@complements.has_key?(nums[i]))
            @complements[comkey.to_i] = i
        else
            return [@complements[nums[i]], i]
        end
    end
end

p two_sum(nums, target)
