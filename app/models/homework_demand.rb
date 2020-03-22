class HomeworkDemand < ApplicationRecord
  has_many :demands, as: :need
end
