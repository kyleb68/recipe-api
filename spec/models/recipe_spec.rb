require "rails_helper"

RSpec.describe Recipe, type: :model do
  subject {
    described_class.new(
      title: "Test Title",
      prep_time: 40,
      cook_time: 50,
      serving_amount: 4,
    )
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it "is not valid with a title that is too long" do
    subject.title = "This title is way too long for a recipe, you should consider making it shorter."
    expect(subject).to_not be_valid
  end
  it "is not valid without prep time" do
    subject.prep_time = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without cook time" do
    subject.cook_time = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without serving amount" do
    subject.serving_amount = nil
    expect(subject).to_not be_valid
  end
end
