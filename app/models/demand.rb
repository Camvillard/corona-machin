class Demand < ApplicationRecord
  belongs_to :tag
  belongs_to :need, polymorphic: true
end
