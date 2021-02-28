require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'new' do
    it 'assigns @user' do
      get :new
      expect(assigns(:user)).to_not be_nil
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template('new')
    end
  end

  describe 'create' do
    it 'creates a new user' do
      post :create, params: { user: { name: 'test_user' } }
      expect(User.find_by(name: 'test_user')).to_not be_nil
    end

    it 'redirects to the citations page' do
      post :create, params: { user: { name: 'test_user' } }
      expect(controller).to redirect_to(controller: 'citations', action: 'index')
    end
  end

end