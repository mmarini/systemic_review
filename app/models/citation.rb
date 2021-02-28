class Citation < ApplicationRecord
  has_one :abstract
  has_many :reviews

  def status
    return 'included' if reviews.where(relevant: true).count >= 2

    return 'excluded' if reviews.where(relevant: false).count >= 2

    'undecided'
  end
end
