require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { build(:product) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(product).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:product_category) }
    it { is_expected.to have_many(:product_order_items) }
    it { is_expected.to have_many(:orders) }
    it { is_expected.to have_many(:customers) }
    it { is_expected.to have_many(:customer_companies) }
  end
end
