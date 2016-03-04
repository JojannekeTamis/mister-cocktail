class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail


  # validates :description, presence: true
  # validates :cocktail, presence: true
  # validates :ingredient, presence: true
  validates :description, :cocktail, :ingredient, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
end
