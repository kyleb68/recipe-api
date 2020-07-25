class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :quantity, presence: true
  validates :unit_of_measurement, presence: true, inclusion: { in: %w(tsp.
                                                                     tbsp.
                                                                     fluid ounce
                                                                     cup
                                                                     pint
                                                                     quart
                                                                     gallon
                                                                     ml
                                                                     liter
                                                                     pound
                                                                     ounce
                                                                     mg
                                                                     g
                                                                     kg
                                                                     mm
                                                                     cm
                                                                     m
                                                                     inch) }

  belongs_to :recipe, optional: true
end
