require 'test_helper'

class MileageCalculatorTest < ActiveSupport::TestCase
  test "the miles method return distance between ORD and SFO" do
  	mc = MileageCalculator.new('ORD','SFO')
  	distance = mc.miles
    assert distance == 1846
  end
end
