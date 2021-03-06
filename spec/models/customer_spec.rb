require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:customer) { build(:customer) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(customer).to be_valid
    end

    it 'is not valid without a company' do
      customer.company = nil
      expect(customer).not_to be_valid
    end

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:phone) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:company) }
    it { is_expected.to have_many(:orders) }
    it { is_expected.to have_many(:order_items) }
    it { is_expected.to have_many(:salesreps) }
    it { is_expected.to have_many(:sales_divisions) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:product_categories) }
  end
end
