require 'rails_helper'

RSpec.describe CitationsController, type: :controller do

  describe 'index' do
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