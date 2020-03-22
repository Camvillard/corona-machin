class Need < ApplicationRecord
  belongs_to :tag
  belongs_to :type

  has_many :lists, dependent: :destroy
end
