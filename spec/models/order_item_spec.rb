require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  let(:order_item) { build(:order_item) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(order_item).to be_valid
    end

    it { is_expected.to validate_presence_of(:quantity) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:product) }
    it { is_expected.to belong_to(:order) }
    it { is_expected.to have_one(:product_category) }
    it { is_expected.to have_one(:customer) }
    it { is_expected.to have_one(:company) }
    it { is_expected.to have_one(:salesrep) }
    it { is_expected.to have_one(:sales_division) }
  end
end
