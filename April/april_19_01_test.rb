require "test/unit"
require_relative "april_19_01"

class April19_01Test < Test::Unit::TestCase
    def test_0
        assert_equal [0, 1], two_sum([2,7,11,15], 9) , 'twosum test1'
    end

    def test_1
        assert_equal [1, 2], two_sum([3,2,4], 6) , 'twosum test2'
    end

    def test_2
        assert_equal [0, 1], two_sum([3,3], 6) , 'twosum test2'
    end

    def test_3
        assert_equal [0, 1], two_sum([-3,3], 0) , 'twosum test2'
    end

    def test_4
        assert_equal [0, 2], two_sum([0,2,3], 3) , 'twosum test2'
    end
end
