require 'test_helper'

class PorridgeTest < ActiveSupport::TestCase
  test "Porridges have a name" do
    assert_equal("Traditional Scottish Porridge", animals(:one).name)
  end

  # test "Porridges has a prep time" do
  #  
  # end

  # test "Porridges has a cook time" do
  #   
  # end

  # test "Porridges has a description" do
  #   
  # end
end
