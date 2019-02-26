class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def summary
    summary = []
    @recipes.each do |recipe|
      summary << {:name => recipe.name,
       :details => {:ingredients => sort_ingredients(recipe),
       :total_calories => recipe.total_calories}}
     end
     summary
  end

  def sort_ingredients(recipe)
    ingredient_holder = recipe.ingredients_required.sort_by do |ingredient|
     ingredient[0].calories * recipe.ingredients_required[ingredient[0]]
   end
   desired_output = []
   ingredient_holder.reverse.each do |ingredient|
     desired_output << {:ingredient => ingredient[0].name,
        :amount => ingredient.last.to_s + " " + ingredient[0].unit}
      end
    desired_output
  end
end
