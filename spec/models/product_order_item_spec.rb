require 'rails_helper'

RSpec.describe ProductOrderItem, type: :model do
  let(:product_order_item) { build(:product_order_item) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(product_order_item).to be_valid
    end

    it { is_expected.to validate_presence_of(:quantity) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:product) }
    it { is_expected.to have_many(:orders) }
    it { is_expected.to have_one(:product_category) }
    it { is_expected.to have_many(:customers) }
    it { is_expected.to have_many(:customer_companies) }
    it { is_expected.to have_many(:salesreps) }
    it { is_expected.to have_many(:sales_divisions) }
  end
end
