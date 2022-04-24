require "test/unit"
require_relative "two_sum_II"

class TwoSumIITest < Test::Unit::TestCase
    def test_0
        assert_equal [0, 1], two_sum([2,7,11,15], 9) , 'twosum test1'
    end
end