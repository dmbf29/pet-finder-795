class Pet < ApplicationRecord
  # associations?
  # validations
  SPECIES = ['bear', 'turtle', 'flying squirrel', 'fish', 'alien', 'dog', 'cat']
  validates :species, inclusion: { in: SPECIES }
  validates :found_on, presence: true
  validates :address, presence: true
  enum status: {
    healthy: 0,
    injured: 1,
    dead: 2
  }
end
