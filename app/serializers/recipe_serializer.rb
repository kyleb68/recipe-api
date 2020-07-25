class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :prep_time, :cook_time, :serving_amount

  has_many :ingredients, :directions
end
