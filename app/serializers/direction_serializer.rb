class DirectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :direction_text, :recipe_id
end
