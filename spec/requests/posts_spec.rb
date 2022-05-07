require 'rails_helper'

RSpec.describe 'All Posts', type: :request do
  describe 'GET posts#index' do
    before :each do
      get '/users/29/posts'
    end

    it 'checks if correct template was rendered' do
      expect(response).to render_template('index')
    end

    it 'checks if response includes placeholder' do
      expect(response.body).to include('this is a list of posts of a given user')
    end
  end
end

RSpec.describe 'Singe Post', type: :request do
  describe 'GET posts#show' do
    before :each do
      get '/users/29/posts/29'
    end

    it 'checks if response status was correct' do
      expect(response).to have_http_status(:ok)
    end

    it 'checks if correct template was rendered' do
      expect(response).to render_template('show')
    end

    it 'checks if response includes placholder' do
      expect(response.body).to include('display posts of users')
    end
  end
end
