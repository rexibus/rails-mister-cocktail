class DosesController < ApplicationController
  def new
    #we need @cocktail in our simple for form
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose = Dose.new(dose_params)
    #we need 'cocktail_id' to associate review with corrisponding cocktail
    @dose.ingredient = @ingredient
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
    #redirection
    redirect_to cocktail_path(params[:cocktail_id])
    # redirect_to cocktail_path
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:cocktail_id])
    @dose.delete
    redirect_to cocktail_path(@cocktail)
  end

private

  def dose_params
    params.require(:dose).permit(:description)
  end

end


