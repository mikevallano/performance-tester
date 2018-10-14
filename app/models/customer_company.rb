class CustomerCompany < ApplicationRecord
  validates :name, :tax_id, presence: true
end
