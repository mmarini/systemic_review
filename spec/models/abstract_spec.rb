require 'rails_helper'

describe Abstract do
  describe 'attributes', attributes: true do
    it { should respond_to(:content) }
  end

  describe 'associations', associations: true do
    it { should belong_to(:citation) }
  end
end