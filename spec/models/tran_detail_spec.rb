require 'rails_helper'

RSpec.describe TranDetail, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      # Create a valid User, TranGroup, and TranDetail instance
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      tran_group_id = TranGroup.create(groupName: 'Group 1', user: user)
      tran_detail = TranDetail.new(itemDetails: 'Sample Item', author: user, tran_group_id: tran_group_id, amount: 10.0)
      
      expect(tran_detail).to be_valid
    end

    it 'is not valid without a user' do
      tran_group_id = TranGroup.create(groupName: 'Group 1', user: nil)
      tran_detail = TranDetail.new(itemDetails: 'Sample Item', author: nil, tran_group_id: tran_group_id, amount: 10.0)
      
      expect(tran_detail).to_not be_valid
    end

    it 'is not valid without itemDetails' do
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      tran_group_id = TranGroup.create(groupName: 'Group 1', user: user)
      tran_detail = TranDetail.new(itemDetails: nil, author: user, tran_group_id: tran_group_id, amount: 10.0)
      
      expect(tran_detail).to_not be_valid
    end

    it 'is not valid with a negative amount' do
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      tran_group_id = TranGroup.create(groupName: 'Group 1', user: user)
      tran_detail = TranDetail.new(itemDetails: 'Sample Item', author: user, tran_group_id: tran_group_id, amount: -10.0)
      
      expect(tran_detail).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to an author (User)' do
      association = TranDetail.reflect_on_association(:author)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
