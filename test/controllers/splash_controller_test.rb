require "test_helper"

class SplashControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get splash_show_url
    assert_response :success
  end
end
