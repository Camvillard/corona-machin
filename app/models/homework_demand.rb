class HomeworkDemand < ApplicationRecord
  has_many :demands, as: :need
  MATIERE = ["sciences", "lettres", "langues", "histoire/géo", "autre"]
end
