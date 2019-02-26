class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def enough_ingredients_for?(recipe)
    stock_list = @stock.keys
    ingredients = recipe.ingredients
    ingredients.all? do |ingredient|
      stock_list.include?(ingredient)
    end
  end
end
