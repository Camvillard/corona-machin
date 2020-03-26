class ErrandDemand < ApplicationRecord
  has_many :demands, as: :need
  has_one :list
  has_many :items, through: :list
end
