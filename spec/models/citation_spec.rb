require 'rails_helper'

describe Citation, type: :model do
  describe 'attributes', attributes: true do
    it { should respond_to(:title) }
    it { should respond_to(:authors) }
    it { should respond_to(:published_year) }
    it { should respond_to(:pages) }
    it { should respond_to(:journal) }
  end

  describe 'associations', associations: true do
    it { should have_one(:abstract) }
    it { should have_many(:reviews) }
  end

  describe 'status' do
    it 'returns included' do
      citation = Citation.create(title: 'title')
      user1 = User.create(name: 'user1')
      user2 = User.create(name: 'user2')
      Review.create(relevant: true, citation: citation, user: user1)
      Review.create(relevant: true, citation: citation, user: user2)
      expect(citation.status).to eql('included')
    end

    it 'returns excluded' do
      citation = Citation.create(title: 'title')
      user1 = User.create(name: 'user1')
      user2 = User.create(name: 'user2')
      Review.create(relevant: false, citation: citation, user: user1)
      Review.create(relevant: false, citation: citation, user: user2)
      expect(citation.status).to eql('excluded')
    end

    it 'returns undecided' do
      citation = Citation.create(title: 'title')
      user1 = User.create(name: 'user1')
      Review.create(relevant: false, citation: citation, user: user1)
      expect(citation.status).to eql('undecided')
    end
  end
end
