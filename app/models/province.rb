class Province < ApplicationRecord
  belongs_to :region
  has_many :municipalities
end
