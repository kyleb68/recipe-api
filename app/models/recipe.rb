class Recipe < ApplicationRecord
  validates :title, presence: true, length: { in: 1..25 }
  validates :prep_time, presence: true
  validates :cook_time, presence: true
  validates :serving_amount, presence: true
end
