require 'rails_helper'

RSpec.describe TranGroup, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      # Create a valid User and TranGroup instance
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      tran_group = TranGroup.new(
        user: user,
        groupName: 'Sample Group',
        icon: 'group-icon.png',
        amount: 100.0
      )

      expect(tran_group).to be_valid
    end

    it 'is not valid without a user' do
      tran_group = TranGroup.new(
        groupName: 'Sample Group',
        icon: 'group-icon.png',
        amount: 100.0
      )

      expect(tran_group).to_not be_valid
    end

    it 'is not valid without a group name' do
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      tran_group = TranGroup.new(
        user: user,
        icon: 'group-icon.png',
        amount: 100.0
      )

      expect(tran_group).to_not be_valid
    end

    it 'is valid without an icon' do
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      tran_group = TranGroup.new(
        user: user,
        groupName: 'Sample Group',
        amount: 100.0
      )

      expect(tran_group).to be_valid
    end

    it 'is valid without an amount' do
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      tran_group = TranGroup.new(
        user: user,
        groupName: 'Sample Group',
        icon: 'group-icon.png'
      )

      expect(tran_group).to be_valid
    end
  end

  describe 'associations' do
    it 'belongs to a user' do
      association = TranGroup.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
