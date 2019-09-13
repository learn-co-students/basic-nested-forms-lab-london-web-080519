class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times {@recipe.ingredients.build}
  end

  def create
    @recipe = Recipe.create(recipe_params)
  end

private

def recipe_params
  params.require(:recipe).permit(:title, ingredients_attributes:[:name, :quantity])
end

end
# def person_params
#   params.require(:person).permit(
#     :name,
#     addresses_attributes: [
#       :street_address_1,
#       :street_address_2,
#       :city,
#       :state,
#       :zipcode,
#       :address_type
#     ]
#   )
# end

