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
end
