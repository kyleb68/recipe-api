class Api::V1::RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :update, :destroy]

  # GET api/v1/recipes
  def index
    recipes = Recipe.all

    render json: RecipeSerializer.new(recipes).serialized_json
  end

  # GET api/v1/recipes/:id
  def show
    render json: RecipeSerializer.new(@recipe, options).serialized_json
  end

  # POST api/v1/recipes
  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      render json: RecipeSerializer.new(recipe).serialized_json
    else
      render error: { error: "Unable to create recipe." }, status: 400
    end
  end

  # PUT api/v1/recipes/:id
  def update
    if @recipe
      @recipe.update(recipe_params)
      render json: { message: "Recipe succesfully updated." }, status: 200
    else
      render json: { error: "Unable to update recipe." }, status: 400
    end
  end

  # DELETE api/v1/recipes/:id
  def destroy
    if @recipe
      @recipe.destroy
      render json: { message: "Recipe succesfully deleted." }, status: 200
    else
      render json: { error: "Unable to delete recipe." }, status: 400
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :prep_time, :cook_time, :serving_amount)
  end

  def find_recipe
    puts(params)
    @recipe = Recipe.find_by!(id: params[:id])
  end

  def options
    @options = { include: [:ingredients, :directions] }
  end
end
