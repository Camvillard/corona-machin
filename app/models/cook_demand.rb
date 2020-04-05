class CookDemand < ApplicationRecord
  has_many :demands, as: :need

  validates :address, presence: true
  validates :recurrence, presence: true
end
