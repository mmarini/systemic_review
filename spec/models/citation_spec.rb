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
end