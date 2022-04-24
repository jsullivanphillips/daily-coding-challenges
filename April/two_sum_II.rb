# --- PROBLEM --- #
# Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, 
# find two numbers such that they add up to a specific target number. 
# Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.

# Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.
# --------------- #

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    i = 0
    j = numbers.size - 1
    left = numbers[i]
    right = numbers[j]
    while i < j
        sum = numbers[j] + numbers[i]
        if sum < target
            i += 1
        elsif sum > target
            j -= 1
        else
            return [i+1, j+1]
        end
    end
end

