require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'destroy' do
    it 'clears the current user' do
      user = User.create(name: 'test_user_1')
      controller.set_current_user(user)
      expect(controller.current_user).to eq(user)
      post :destroy
      expect(controller.current_user).to be_nil
    end

    it 'redirects to the new user page' do
      post :destroy
      expect(controller).to redirect_to(controller: 'users', action: 'new')
    end
  end
end
