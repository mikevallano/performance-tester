require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:company) { build(:company) }

  describe 'validations' do

    it 'has a valid factory' do
      expect(company).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:tax_id) }
  end

  describe 'relationships' do
    it { is_expected.to have_many(:customers) }
    it { is_expected.to have_many(:orders) }
    it { is_expected.to have_many(:order_items) }
    it { is_expected.to have_many(:salesreps) }
    it { is_expected.to have_many(:sales_divisions) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:product_categories) }
  end
end
