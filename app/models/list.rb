class List < ApplicationRecord
  belongs_to :errand_demand
  has_many :items, dependent: :destroy
end
