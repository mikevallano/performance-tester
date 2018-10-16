class Salesrep < ApplicationRecord
  belongs_to :sales_division
  has_many :orders

  validates :first_name, :last_name, presence: true
end
