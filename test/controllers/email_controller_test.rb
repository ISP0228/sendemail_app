require 'test_helper'

class EmailControllerTest < ActionDispatch::IntegrationTest
  test "should get email_change" do
    get email_email_change_url
    assert_response :success
  end

end
