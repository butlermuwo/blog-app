require 'rails_helper'

RSpec.describe "PostShows", type: :request do
  describe "GET /post_shows" do
    it "works! (now write some real specs)" do
      get post_shows_path
      expect(response).to have_http_status(200)
    end
  end
end
