require 'rails_helper'

RSpec.describe OrdersController, type: :controller do

  let(:order) { create(:order) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {id: order.id}
      expect(response).to have_http_status(:success)
    end
  end

end
