require 'rails_helper'

RSpec.describe SalesDivision, type: :model do
  let(:sales_division) { build(:sales_division) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(sales_division).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
  end
end
