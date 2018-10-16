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
end
