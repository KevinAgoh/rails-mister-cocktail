class AddCocktailReferenceToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :cocktail, foreign_key: true
  end
end
