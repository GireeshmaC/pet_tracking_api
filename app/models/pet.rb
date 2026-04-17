class Pet < ApplicationRecord
  belongs_to :owner

  validates :name, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 0 }
end
