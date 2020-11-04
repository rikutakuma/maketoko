require 'test_helper'

class Admins::StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_stores_index_url
    assert_response :success
  end

  test "should get shoe" do
    get admins_stores_shoe_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_stores_destroy_url
    assert_response :success
  end

end
