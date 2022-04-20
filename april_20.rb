# Jamie Sullivan-Phillips
# Daily coding challenge April 20th 2022
input = [1,2,3,4,5]

def product_except_i(input)
    output = []
    product = input.reduce(1, :*)
    for elements in input
        output.push(product / elements)
    end
    return output
end

def product_except_i_nodiv(input)
    output = []
    for elements in input
        output.push(input.inject do |product, num|
                num == elements ? product : product = product * num
            end)
    end
    return output
end


puts(product_except_i(input))
puts(product_except_i_nodiv(input))
