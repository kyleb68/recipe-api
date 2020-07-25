require "rails_helper"

RSpec.describe Direction, type: :model do
  subject {
    described_class.new(
      direction_text: "this is test text for a text direction for a recipe",
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.direction_text = nil
    expect(subject).to_not be_valid
  end
end
