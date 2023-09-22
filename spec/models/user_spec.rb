require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.new(
        name: 'John Doe',
        email: 'john@example.com',
        password: '<PASSWORD>',
        encrypted_password: 'password'
      )

      expect(user).to be_valid
    end

    it 'is not valid without a name' do
      user = User.new(
        email: 'john@example.com',
        password: '<PASSWORD>',
        encrypted_password: 'password'
      )

      expect(user).to_not be_valid
    end

    it 'is not valid without an email' do
      user = User.new(
        name: 'John Doe',
        encrypted_password: 'password'
      )

      expect(user).to_not be_valid
    end

    it 'is not valid without an encrypted password' do
      user = User.new(
        name: 'John Doe',
        email: 'john@example.com'
      )

      expect(user).to_not be_valid
    end
  end
end
