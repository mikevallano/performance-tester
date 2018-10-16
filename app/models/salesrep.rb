class Salesrep < ApplicationRecord
  belongs_to :sales_division

  validates :first_name, :last_name, presence: true
end
