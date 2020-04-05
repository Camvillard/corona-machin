class HomeworkDemand < ApplicationRecord
  has_many :demands, as: :need
  MATIERE = ["sciences", "lettres", "langues", "histoire/géo", "autre"]

  validates :matiere, presence: true
  validates :recurrence, presence: true
end
