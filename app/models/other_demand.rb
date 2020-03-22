class OtherDemand < ApplicationRecord
  has_many :demands, as: :need
end
