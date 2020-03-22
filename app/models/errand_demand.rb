class ErrandDemand < ApplicationRecord
  has_many :demands, as: :need
end
