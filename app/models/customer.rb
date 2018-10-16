class Customer < ApplicationRecord
  belongs_to :customer_company
  has_many :orders

  validates :first_name, :last_name, :phone, presence: true
end
