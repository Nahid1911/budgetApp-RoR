require "application_system_test_case"

class TranGroupsTest < ApplicationSystemTestCase
  setup do
    @tran_group = tran_groups(:one)
  end

  test "visiting the index" do
    visit tran_groups_url
    assert_selector "h1", text: "Tran groups"
  end

  test "should create tran group" do
    visit tran_groups_url
    click_on "New tran group"

    fill_in "Amount", with: @tran_group.amount
    fill_in "Groupname", with: @tran_group.groupName
    fill_in "Icon", with: @tran_group.icon
    fill_in "User", with: @tran_group.user_id
    click_on "Create Tran group"

    assert_text "Tran group was successfully created"
    click_on "Back"
  end

  test "should update Tran group" do
    visit tran_group_url(@tran_group)
    click_on "Edit this tran group", match: :first

    fill_in "Amount", with: @tran_group.amount
    fill_in "Groupname", with: @tran_group.groupName
    fill_in "Icon", with: @tran_group.icon
    fill_in "User", with: @tran_group.user_id
    click_on "Update Tran group"

    assert_text "Tran group was successfully updated"
    click_on "Back"
  end

  test "should destroy Tran group" do
    visit tran_group_url(@tran_group)
    click_on "Destroy this tran group", match: :first

    assert_text "Tran group was successfully destroyed"
  end
end
