require "test_helper"

class TranDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tran_detail = tran_details(:one)
  end

  test "should get index" do
    get tran_details_url
    assert_response :success
  end

  test "should get new" do
    get new_tran_detail_url
    assert_response :success
  end

  test "should create tran_detail" do
    assert_difference("TranDetail.count") do
      post tran_details_url, params: { tran_detail: { amount: @tran_detail.amount, itemDetails: @tran_detail.itemDetails, user_id: @tran_detail.user_id } }
    end

    assert_redirected_to tran_detail_url(TranDetail.last)
  end

  test "should show tran_detail" do
    get tran_detail_url(@tran_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_tran_detail_url(@tran_detail)
    assert_response :success
  end

  test "should update tran_detail" do
    patch tran_detail_url(@tran_detail), params: { tran_detail: { amount: @tran_detail.amount, itemDetails: @tran_detail.itemDetails, user_id: @tran_detail.user_id } }
    assert_redirected_to tran_detail_url(@tran_detail)
  end

  test "should destroy tran_detail" do
    assert_difference("TranDetail.count", -1) do
      delete tran_detail_url(@tran_detail)
    end

    assert_redirected_to tran_details_url
  end
end
