require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test
  def setup
    @cheese = Ingredient.new("Cheese", "oz", 50)
  end

  def test_ingredient_exists
    assert_instance_of Ingredient, @cheese
  end

  def test_ingredient_has_attributes
    assert_equal "Cheese", @cheese.name
    assert_equal "oz", @cheese.unit
    assert_equal 50, @cheese.calories
  end
end
