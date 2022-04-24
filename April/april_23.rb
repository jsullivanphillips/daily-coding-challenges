# Jamie Sullivan-Phillips
# Daily coding challenge April 21st 2022

# ---- PROBLEM ----- #
# cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first and last element of that pair. 
# For example, car(cons(3, 4)) returns 3, and cdr(cons(3, 4)) returns 4.
#
# Given this implementation of cons:
#
# def cons(a, b)
#    def pair(f)
#        return f(a, b)
#    return pair
#
# Implement car and cdr.
# ------------------ #


class Pair
    attr_accessor :first, :second
    def initialize(a, b)
        @first = a
        @second = b
    end
end

def cons(a,b)
    return Pair.new(a,b)
end

def car(pair)
    return pair.first
end

def cdr(pair)
    return pair.second
end

