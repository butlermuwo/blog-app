require 'rails_helper'

RSpec.describe "UserPostIndices", type: :request do
  describe "GET /user_post_indices" do
    it "works! (now write some real specs)" do
      get user_post_indices_path
      expect(response).to have_http_status(200)
    end
  end
end