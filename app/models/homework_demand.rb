class HomeworkDemand < ApplicationRecord
  has_many :demands, as: :need
  RECURRENCE = ["ponctuel", "quotidien", "hebdomadaire"]
  MATIERE = ["sciences", "lettres", "langues", "histoire/géo", "autre"]
end
