class SocialDemand < ApplicationRecord
  has_many :demands, as: :need
end
