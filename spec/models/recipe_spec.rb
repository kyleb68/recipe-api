require "rails_helper"

RSpec.describe Recipe, type: :model do
  it "is valid with valid attributes" do
    recipe = Recipe.new()
    recipe.title = "Test Title"
    recipe.prep_time = 40.00
    recipe.cook_time = 50.50
    recipe.serving_amount = 4
  end
  it "is not valid without a title" do
    recipe = Recipe.new(title: nil)
    expect(recipe).to_not be_valid
  end
  it "is not valid with a title that is too long" do
    recipe = Recipe.new(title: "This title is way too long for a recipe, you should consider making it shorter.")
    expect(recipe).to_not be_valid
  end
  it "is not valid without prep time" do
    recipe = Recipe.new(prep_time: nil)
    expect(recipe).to_not be_valid
  end
  it "is not valid without cook time" do
    recipe = Recipe.new(cook_time: nil)
    expect(recipe).to_not be_valid
  end
  it "is not valid without serving amount" do
    recipe = Recipe.new(serving_amount: nil)
    expect(recipe).to_not be_valid
  end
end
