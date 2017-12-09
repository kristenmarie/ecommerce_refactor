class Product < ApplicationRecord
  validates :name, :price, :description, :presence => true
  has_many :order_items

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
