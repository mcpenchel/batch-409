class Pet < ApplicationRecord

  SPECIES = ["dog", "cat", "bird", "turtle", "hamster", "rabbit"]

  validates :name, presence: true
  validates :rescued_at, presence: true
  validates :species, inclusion: { in: SPECIES }

end
