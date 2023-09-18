require "application_system_test_case"

class TranDetailsTest < ApplicationSystemTestCase
  setup do
    @tran_detail = tran_details(:one)
  end

  test "visiting the index" do
    visit tran_details_url
    assert_selector "h1", text: "Tran details"
  end

  test "should create tran detail" do
    visit tran_details_url
    click_on "New tran detail"

    fill_in "Amount", with: @tran_detail.amount
    fill_in "Itemdetails", with: @tran_detail.itemDetails
    fill_in "User", with: @tran_detail.user_id
    click_on "Create Tran detail"

    assert_text "Tran detail was successfully created"
    click_on "Back"
  end

  test "should update Tran detail" do
    visit tran_detail_url(@tran_detail)
    click_on "Edit this tran detail", match: :first

    fill_in "Amount", with: @tran_detail.amount
    fill_in "Itemdetails", with: @tran_detail.itemDetails
    fill_in "User", with: @tran_detail.user_id
    click_on "Update Tran detail"

    assert_text "Tran detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Tran detail" do
    visit tran_detail_url(@tran_detail)
    click_on "Destroy this tran detail", match: :first

    assert_text "Tran detail was successfully destroyed"
  end
end
