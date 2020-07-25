require "rails_helper"

RSpec.describe Ingredient, type: :model do
  subject {
    described_class.new(
      name: "Test Name",
      quantity: 1,
      unit_of_measurement: "pound",
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a quantity" do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a unit of measurement" do
    subject.unit_of_measurement = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a valid unit of measurement" do
    subject.unit_of_measurement = "Not a valid unit of measurement"
    expect(subject).to_not be_valid
  end
end
