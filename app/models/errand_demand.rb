class ErrandDemand < ApplicationRecord
  has_many :demands, as: :need
  has_one :list, dependent: :destroy
  has_many :items, through: :list

  validates :address, presence: true
end
