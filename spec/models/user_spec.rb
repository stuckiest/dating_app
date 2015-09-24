require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'create profile' do
    it 'creates a new user' do
      user = User.create()
      expect(user.name).to eq("Factory Girl")
    end
  end
end
