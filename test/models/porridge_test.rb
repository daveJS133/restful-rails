require 'test_helper'

class PorridgeTest < ActiveSupport::TestCase
  test "Porridges have a name" do
    assert_equal("Traditional Scottish Porridge", animals(:one).name)
  end

  # test "Porridges has a prep time" do
  #  assert animals(:one).move == "walk"
  # end

  # test "Porridges has a cook time" do
  #   assert animals(:two).move == "slither"
  # end

  # test "Porridges has a description" do
  #   assert animals(:two).move == "slither"
  # end
end
