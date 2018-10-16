require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:customer) { build(:customer) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(customer).to be_valid
    end

    it 'is not valid without a customer_company' do
      customer.customer_company = nil
      expect(customer).not_to be_valid
    end

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:phone) }
  end
end
