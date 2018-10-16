require 'rails_helper'

RSpec.describe CustomerCompany, type: :model do
  let(:customer_company) { build(:customer_company) }

  describe 'validations' do

    it 'has a valid factory' do
      expect(customer_company).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:tax_id) }
  end
end
