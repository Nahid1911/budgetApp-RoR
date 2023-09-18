require "test_helper"

class TranGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tran_group = tran_groups(:one)
  end

  test "should get index" do
    get tran_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_tran_group_url
    assert_response :success
  end

  test "should create tran_group" do
    assert_difference("TranGroup.count") do
      post tran_groups_url, params: { tran_group: { amount: @tran_group.amount, groupName: @tran_group.groupName, icon: @tran_group.icon, user_id: @tran_group.user_id } }
    end

    assert_redirected_to tran_group_url(TranGroup.last)
  end

  test "should show tran_group" do
    get tran_group_url(@tran_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_tran_group_url(@tran_group)
    assert_response :success
  end

  test "should update tran_group" do
    patch tran_group_url(@tran_group), params: { tran_group: { amount: @tran_group.amount, groupName: @tran_group.groupName, icon: @tran_group.icon, user_id: @tran_group.user_id } }
    assert_redirected_to tran_group_url(@tran_group)
  end

  test "should destroy tran_group" do
    assert_difference("TranGroup.count", -1) do
      delete tran_group_url(@tran_group)
    end

    assert_redirected_to tran_groups_url
  end
end
