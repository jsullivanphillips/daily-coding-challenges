require "test/unit"
require_relative "april_22"

class April22Test < Test::Unit::TestCase
    def test_segregate
        test_arr = [3, 4, -1, 1]
        size = test_arr.size
        segregrate(test_arr, size)
        assert_equal [-1, 4, 3, 1], test_arr , 'seg1 test'
    end

    def test_segregate_2

        test_arr = [1, 2, 0, -1, -1, -1]
        size = test_arr.size
        segregrate(test_arr, size)
        assert_equal [0, -1, -1, -1, 1, 2], test_arr , 'seg2 test'
    end

    def test_03
        assert_equal 3, findMissing([2, 4, -1, 1]), '[2, 4, -1, 1] should return 3'
    end
end