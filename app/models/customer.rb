class Customer < ApplicationRecord
  belongs_to :customer_company
  validates :first_name, :last_name, :phone, presence: true
end
