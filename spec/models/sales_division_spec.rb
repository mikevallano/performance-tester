require 'rails_helper'

RSpec.describe SalesDivision, type: :model do
  let(:sales_division) { build(:sales_division) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(sales_division).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'relationships' do
    it { is_expected.to have_many(:salesreps) }
    it { is_expected.to have_many(:orders) }
    it { is_expected.to have_many(:order_items) }
    it { is_expected.to have_many(:customers) }
    it { is_expected.to have_many(:companies) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:product_categories) }
  end
end
