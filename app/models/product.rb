class Product < ApplicationRecord
  validates :title, :price, :description, :presence => true
  has_many :order_items
end
