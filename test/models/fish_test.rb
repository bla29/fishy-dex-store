require "test_helper"

class FishTest < ActiveSupport::TestCase
   test "should not save fish without species, weight, or date" do
    fish = Fish.new
    assert_not fish.save
   end
end
