class IngredientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :quantity, :unit_of_measurement, :description, :recipe_id
end
