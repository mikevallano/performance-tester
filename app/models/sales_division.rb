class SalesDivision < ApplicationRecord
  has_many :salesreps

  validates :name, presence: true
end
