class Demand < ApplicationRecord
  belongs_to :tag
  belongs_to :need, polymorphic: true
  RECURRENCE = ["ponctuel", "quotidien", "hebdomadaire"]
end
