class Product < ApplicationRecord
  belongs_to :product_category

  validates :name, :description, presence: true
end
