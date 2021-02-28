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

  describe 'review!' do
    it 'adds a review to the citation' do
      user = User.create(name: 'test_user_1')
      citation = Citation.create(title: 'title')
      review = citation.review!(user, true)
      expect(review.relevant).to be_truthy
      expect(review.user).to eql(user)
    end

    it 'returns an existing review if trying to re-review for the same user' do
      user = User.create(name: 'test_user_1')
      citation = Citation.create(title: 'title')
      review_1 = citation.review!(user, true)
      review_2 = citation.review!(user, true)
      expect(review_1).to eq(review_2)
    end
  end

  describe 'reviewed?' do
    it 'returns true if already reviewed by the user' do
      user = User.create(name: 'test_user_1')
      citation = Citation.create(title: 'title')
      citation.review!(user, true)
      expect(citation.reviewed?(user)).to be_truthy
    end

    it 'returns false if there is no existing review by the user' do
      user = User.create(name: 'test_user_1')
      citation = Citation.create(title: 'title')
      expect(citation.reviewed?(user)).to be_falsey
    end
  end
end
