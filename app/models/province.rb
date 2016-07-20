class Province < ApplicationRecord
  belongs_to :region
  has_many :municipalities
  has_one :product
end
