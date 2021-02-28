require 'rails_helper'

RSpec.describe CitationsController, type: :controller do

  before(:each) do
    allow_any_instance_of(ApplicationController).to receive(:check_user)
  end

  describe 'index' do
    it 'redirects to create user if no user in the session' do
      allow_any_instance_of(ApplicationController).to receive(:check_user).and_call_original
      get :index
      expect(controller).to redirect_to(controller: 'users', action: 'new')
    end

    it 'assigns @citations' do
      citation = Citation.create
      get :index
      expect(assigns(:citations)).to eq([citation])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'show' do
    it 'redirects to create user if no user in the session' do
      allow_any_instance_of(ApplicationController).to receive(:check_user).and_call_original
      citation = Citation.create
      get :show, params: { id: citation.id }
      expect(controller).to redirect_to(controller: 'users', action: 'new')
    end

    it 'assigns @citation' do
      citation = Citation.create
      get :show, params: { id: citation.id }
      expect(assigns(:citation)).to eq(citation)
    end

    it 'renders the show template' do
      citation = Citation.create
      get :show, params: { id: citation.id }
      expect(response).to render_template('show')
    end
  end

end