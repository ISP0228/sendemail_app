require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get user_login" do
    get login_user_login_url
    assert_response :success
  end

end
