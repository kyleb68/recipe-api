class Api::V1::IngredientsController < ApplicationController
  before_action :find_ingredient, only: [:show, :update, :destroy]

  # GET api/v1/ingredients/:id
  def show
    render json: IngredientSerializer.new(@ingredient).serialized_json
  end

  # POST api/v1/ingredients
  def create
    ingredient = Ingredient.new(ingredient_params)

    if ingredient.save
      render json: IngredientSerializer.new(ingredient).serialized_json
    else
      render error: { error: "Unable to create ingredient" }, status: 400
    end
  end

  # PUT api/v1/ingredients/:id
  def update
    if @ingredient
      @ingredient.update(ingredient_params)
      render json: { message: "Ingredient succesfully updated." }, status: 200
    else
      render json: { error: "Unable to update ingredient." }, status: 400
    end
  end

  # DELETE api/v1/ingredients/:id
  def destroy
    if @ingredient
      @ingredient.destroy
      render json: { message: "Ingredient succesfully deleted." }, status: 200
    else
      render json: { error: "Unable to delete ingredient." }, status: 400
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :unit_of_measurement, :description, :recipe_id)
  end

  def find_ingredient
    @ingredient = Ingredient.find_by!(id: params[:id])
  end
end
