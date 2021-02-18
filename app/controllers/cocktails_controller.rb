class CocktailsController < ApplicationController
  def index 
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def ingredient 
    @ingredient_name = @cocktail.ingredient_name
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)

    redirect_to cocktails_path(@cocktails)
  end

  private 

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
