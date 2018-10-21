require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { build(:order) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(order).to be_valid
    end
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:customer) }
    it { is_expected.to belong_to(:salesrep) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:order_items) }
    it { is_expected.to have_many(:product_categories) }
    it { is_expected.to have_one(:sales_division) }
  end
end
