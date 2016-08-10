class Product < ApplicationRecord
  belongs_to :category
  belongs_to :ad_type
  belongs_to :status
  belongs_to :condition
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  def created_at
    ApplicationController.helpers.time_ago_in_words(self[:created_at]) + ' ago'
  end

  def description
    self[:description].html_safe
  end
end
