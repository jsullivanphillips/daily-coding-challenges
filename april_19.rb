    
def add_to_k(test, k)
    i = 0
    match_list = []
    while i < test.length
        if (test[i] < k)
            if match_list.include? (test[i])
                return "solution found: #{test[i]} and #{k-test[i]}"
            else
                match_list.push(k - test[i])
            end
        end
        i += 1
    end
    return "no solution found"
end


test = [10, 15, 3, 7]
k = 17
puts("input list #{test} and k = #{k}")
puts(add_to_k(test, k))

