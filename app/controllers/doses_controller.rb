class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = available_ingredients
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = available_ingredients
    @dose = Dose.new(params.require(:dose).permit(:description, :ingredient_id))
    @dose.cocktail = @cocktail
    if @dose.valid?
      @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
      @cocktail = Cocktail.find(params[:cocktail_id])
      @dose = Dose.find(params[:id])
    @dose.destroy!
    redirect_to cocktail_path(@cocktail)
  end

  def available_ingredients
    Ingredient.select do |ingredient|
      ingredient unless @cocktail.ingredients.include?(ingredient)
    end
  end

end
