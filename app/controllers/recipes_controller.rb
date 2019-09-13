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
    #@recipe.ingredients.build
  end

  # @person = Person.new
  # @person.addresses.build(address_type: 'work')
  # @person.addresses.build(address_type: 'home')


  def create
    @recipe = Recipe.create(recipe_params)
    
    #@recipe = Recipe.create(params)
    
  end


private

def recipe_params
  #params.require(:parent).permit(:any_parent_attributes_go_here kids_attributes: [:id, :name, :_destroy]) # This permits the kids params to be saved
  params.require(:recipe).permit(:title, ingredients_attributes:[:name, :quantity])
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

end