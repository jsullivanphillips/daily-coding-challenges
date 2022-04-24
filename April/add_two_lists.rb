require "test/unit"

#Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end


def list_to_int(l1)
    i = 0
    sum = 0
    while l1 != nil
        sum = sum + l1.val * (10 ** i)
        i += 1
        l1 = l1.next
    end
    return sum
end

def int_to_list(val)
    s_val = val.to_s
    i = s_val.length - 1
    output = Array.new()
    while i >= 0
        output.push(s_val[i].to_i)
        i -= 1
    end
    return output
end

def add_two_numbers(l1, l2) 
    sum1 = list_to_int(l1)
    sum2 = list_to_int(l2)
    return int_to_list(sum1 + sum2) 
end

l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))
puts(add_two_numbers(l1,l2))
