class Product < ApplicationRecord
  has_many :order_items, class_name: 'ShoppingCart::OrderItem'
end
