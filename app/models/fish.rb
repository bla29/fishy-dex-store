class Fish < ApplicationRecord
  validates :species, :weight, :date, presence: true
end
