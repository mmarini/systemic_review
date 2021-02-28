class Citation < ApplicationRecord
  has_one :abstract
  has_many :reviews

  def status
    return 'included' if reviews.where(relevant: true).count >= 2

    return 'excluded' if reviews.where(relevant: false).count >= 2

    'undecided'
  end

  def review!(user, relevant)
    review = self.reviews.find_by(user: user)
    review ||= self.reviews.create(user: user, relevant: relevant)
    review
  end

  def reviewed?(user)
    self.reviews.exists?(user: user)
  end
end
