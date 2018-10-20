require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  let(:product_category) { build(:product_category) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(product_category).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.not_to validate_presence_of(:description) }
  end

  describe 'relationships' do
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:product_order_items) }
    it { is_expected.to have_many(:orders) }
    it { is_expected.to have_many(:customers) }
    it { is_expected.to have_many(:customer_companies) }
    it { is_expected.to have_many(:salesreps) }
    it { is_expected.to have_many(:sales_divisions) }
  end
end
