require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '.current_user' do
    it 'returns the current logged in user in the session' do
      user = User.create(name: 'test_user_1')
      session[:current_user] = user.id
      expect(helper.current_user).to eq(user)
    end

    it 'returns nil if there is no logged in user' do
      session[:current_user] = nil
      expect(helper.current_user).to be_nil
    end
  end

  describe '.clear_current_user' do
    it 'clears the current user' do
      user = User.create(name: 'test_user_1')
      session[:current_user] = user.id
      expect(helper.current_user).to eq(user)
      helper.clear_current_user
      expect(helper.current_user).to be_nil
    end
  end

  describe '.set_current_user' do
    it 'set the current user' do
      user = User.create(name: 'test_user_1')
      helper.set_current_user(user)
      expect(session[:current_user]).to eq(user.id)
    end
  end
end