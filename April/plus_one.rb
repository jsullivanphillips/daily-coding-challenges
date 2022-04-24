# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    i = (digits.length) -1
    while i >= 0
        if(digits[i] == 9)
            digits[i] = 0
            if i == 0
                digits.unshift(1)
                break
            end
        else
            digits[i] += 1
            break
        end
        i -= 1
    end
    return digits
end