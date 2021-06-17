require 'rails_helper'

RSpec.describe User, type: :model do
    context "User Validation" do
    it 'User is valid with valid attributes' do
      user = User.new(
        email: 'thiago@costa.com',
        password: "123456"
      )
      expect(user).to be_valid
    end
  end
end
