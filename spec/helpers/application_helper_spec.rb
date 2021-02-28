require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '.current_user' do
    it 'returns the current logged in user in the session' do
      user = User.create(name: 'test_user_1')
      session[:current_user] = user.id
      expect(helper.current_user).to eq(user)
    end
  end
end