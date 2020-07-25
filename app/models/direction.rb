class Direction < ApplicationRecord
  validates :direction_text, presence: true

  belongs_to :recipe, optional: true
end
