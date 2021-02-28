class User < ApplicationRecord
  validates_uniqueness_of :name, case_sensitive: false
  has_many :reviews
end
