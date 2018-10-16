require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { build(:order) }

  describe 'validations' do
    it 'has a valid factory' do
      expect(order).to be_valid
    end
  end
end
