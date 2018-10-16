require 'rails_helper'

RSpec.describe ProductOrderItem, type: :model do
  let(:product_order_item) { build(:product_order_item) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(product_order_item).to be_valid
    end

    it { is_expected.to validate_presence_of(:quantity) }
  end
end
