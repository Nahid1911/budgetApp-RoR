require 'rails_helper'

RSpec.describe 'TranDetail', type: :feature do
  user =User.create( name: 'User One10', email: 'userndse1000@example.com', password: '111111')
  tranGroup = TranGroup.create( groupName: 'Grocery', icon: '<i class="logo"> </i>')
  tranDetail = TranDetail.create( itemDetails: 'Meat', author_id: '1' , amount: '100')
  
  before(:all) do
    visit new_user_registration_path
    fill_in 'Name', with: user.name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign up'
    sleep 1
  end

  before(:each) do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    sleep 1
  end
  
  scenario 'Log in/Create Group/logout' do
    click_link 'Add New Group'
    sleep 1
    fill_in 'Groupname', with: tranGroup.groupName
    select 'Grocery'
    click_button 'Create Group'
    sleep 1
    click_link 'Logout'
    expect(page).to have_content('You have signed out.')
    sleep 1
  end
  
  scenario 'Create transaction' do
    click_link 'Add New Group'
    sleep 1
    fill_in 'Groupname', with: tranGroup.groupName
    select 'Grocery'
    click_button 'Create Group'
    sleep 1
    click_link 'Grocery'
    sleep 1
    click_link 'Create Transaction'
    fill_in 'Itemdetails', with: tranDetail.itemDetails
    fill_in 'Amount', with: tranDetail.amount
    select 'Grocery'
    click_button 'Add Transaction'
    sleep 1
    expect(page).to have_content('GROUP TRANSACTIONS')
    expect(page).to have_content('Group Total : 100.0')
    save_and_open_page
    sleep 1
  end
end