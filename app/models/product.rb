class Product < ApplicationRecord
  belongs_to :category
  belongs_to :ad_type
  belongs_to :status
  belongs_to :condition
  belongs_to :user

  has_many :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  def created_at
    ApplicationController.helpers.time_ago_in_words(self[:created_at]) + ' ago'
  end

  def description
    ApplicationController.helpers.raw(self[:description])
  end
end
