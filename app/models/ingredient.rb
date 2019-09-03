class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  def ingredients_attributes=(ingredient)
    self.ingredient = Recipe.find_or_create_by(name: ingredient[:name], quantity: quantity[:quantity])
    self.ingredient.update(ingredient)
  end

end
