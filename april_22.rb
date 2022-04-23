# Jamie Sullivan-Phillips
# Daily coding challenge April 21st 2022
# ---- PROBLEM ----- #
# Given an array of integers, find the first missing positive integer 
# in linear time and constant space. In other words, find the lowest positive integer
# that does not exist in the input array. The array can contain duplicates and negative numbers as well.

# For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

# You can modify the input array in-place
# ------------------ #
# test cases are in april_22_test.rb
# ------------------ #
# Assumptions: its not about a pattern. its 

def findMissing(arr)
    size = arr.size
    shift = segregrate(arr, size)
    pos_arr = Array.new(size - shift)
    j = 0
    i = shift
    while i < size
        pos_arr[j] = arr[i]
        i += 1 
        j += 1 
    end

    return findMissingPositive(pos_arr, j)
end

def segregrate(arr, size)
    j = 0
    i = 0
    while i < size
        if (arr[i] <= 0)
            temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            j += 1
        end
        i += 1
    end
    return j
end

def findMissingPositive(arr, size)
    i = 0
    while i < size 
        x = arr[i]
        if (x - 1 < size and arr[x - 1] > 0)
            arr[x-1] = -arr[x-1]
        end
        i += 1
    end

    i = 0
    while i < size
        if arr[i] > 0
            return i + 1
        end
        i += 1
    end

    return size + 1
end
