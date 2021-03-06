class CocktailsController < ApplicationController
  def index 
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
    @reviews = Review.all
  end

  def ingredient 
    @ingredient_name = @cocktail.ingredient_name
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)

      if @cocktail.save
        redirect_to cocktail_path(@cocktail)
      else
        render 'new'
      end
  end


  private 

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
