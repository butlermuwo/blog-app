require 'rails_helper'

RSpec.describe "UserIndices", type: :request do
  describe "GET /user_indices" do
    it "works! (now write some real specs)" do
      get user_indices_path
      expect(response).to have_http_status(200)
    end
  end
end
