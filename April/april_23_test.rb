require "test/unit"
require_relative "april_23"

class April22Test < Test::Unit::TestCase
    def test_01
        assert_equal 3, car(cons(3, 4)) , 'cons test_01'
    end

    def test_02
        assert_equal 4, cdr(cons(3, 4)) , 'cdr test_01'
    end
end

