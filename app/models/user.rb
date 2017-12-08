class User < ApplicationRecord
  has_secure_password
  has_many :orders
  PASSWORD_FORMAT = /\A
  (?=.{6,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x

  validates :password,
  presence: true,
  length: { in: Devise.password_length },
  format: { with: PASSWORD_FORMAT },
  confirmation: true,
  on: :create

  validates :password,
  allow_nil: true,
  length: { in: Devise.password_length },
  format: { with: PASSWORD_FORMAT },
  confirmation: true,
  on: :update

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
