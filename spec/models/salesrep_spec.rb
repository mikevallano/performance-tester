require 'rails_helper'

RSpec.describe Salesrep, type: :model do
  let(:salesrep) { build(:salesrep) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(salesrep).to be_valid
    end

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:sales_division) }
    it { is_expected.to have_many(:orders) }
  end
end
