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
    it { is_expected.to belong_to(:product_order_item) }
    it { is_expected.to belong_to(:salesrep) }
  end
end
