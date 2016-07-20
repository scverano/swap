class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :ad_type
  belongs_to :status
  belongs_to :condition
  belongs_to :region
  belongs_to :province
  belongs_to :municipality
end
