class Review < ApplicationRecord
  belongs_to :user
  belongs_to :citation

  validates :relevant, inclusion: [true, false]
end
