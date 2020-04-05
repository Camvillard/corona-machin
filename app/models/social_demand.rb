class SocialDemand < ApplicationRecord
  has_many :demands, as: :need

  validates :recurrence, presence: true
end
