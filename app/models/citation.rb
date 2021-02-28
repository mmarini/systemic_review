class Citation < ApplicationRecord
  has_one :abstract
  has_many :reviews
end
