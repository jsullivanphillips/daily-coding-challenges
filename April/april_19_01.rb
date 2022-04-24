# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    target_nums = Hash.new()
    i = 0
    for num in nums
        if num < target
            if(target_nums.has_key? num)
                return [target_nums[num], i]
            end
            target_nums[target - num] = i
        end
        i += 1
    end
end