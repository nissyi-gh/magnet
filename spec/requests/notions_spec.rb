require 'rails_helper'

RSpec.describe "Notions", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/notions/index"
      expect(response).to have_http_status(:success)
    end
  end

end
