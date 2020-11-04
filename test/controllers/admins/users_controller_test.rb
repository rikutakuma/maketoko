require 'test_helper'

class Admins::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admins_users_create_url
    assert_response :success
  end

end
