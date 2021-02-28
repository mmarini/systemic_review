require 'rails_helper'

describe Review, type: :model do
  subject { described_class.new(
    relevant: true, 
    user: User.new, 
    citation: Citation.new
  ) }

  describe 'attributes', attributes: true do
    it { should respond_to(:relevant) }

    it 'should accept true, false for relevant' do
      [true, false].each do |value|
        subject.relevant = value
        expect(subject).to be_valid
      end
    end
  end

  describe 'associations', associations: true do
    it { should belong_to(:citation) }
    it { should belong_to(:user) }
  end
end