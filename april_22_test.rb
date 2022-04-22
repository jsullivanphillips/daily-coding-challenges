require "test/unit"
require_relative "april_22"

class April22Test < Test::Unit::TestCase
    def test_01
        assert_equal 2, missing_positive_integer([3, 4, -1, 1]), '[3, 4, -1, 1] should return 2'
    end

    def test_02
        assert_equal 3, missing_positive_integer([1, 2, 0]), '[1, 2, 0] should return 3'
    end

end