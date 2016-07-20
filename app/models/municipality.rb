class Municipality < ApplicationRecord
  belongs_to :province
  has_one :product
end
