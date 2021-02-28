require 'rails_helper'

describe User, type: :model do
  describe 'attributes', attributes: true do
    it { should respond_to(:name) }
  end

  describe 'associations', associations: true do
    it { should have_many(:reviews) }
  end

  describe 'validations', associations: true do
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end