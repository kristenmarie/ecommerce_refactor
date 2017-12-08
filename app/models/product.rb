class Product < ApplicationRecord
  validates :name, :price, :description, :presence => true
  has_many :order_items
end
