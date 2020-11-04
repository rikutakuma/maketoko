require 'test_helper'

class Admins::AreasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_areas_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_areas_show_url
    assert_response :success
  end

  test "should get update" do
    get admins_areas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_areas_destroy_url
    assert_response :success
  end

  test "should get create" do
    get admins_areas_create_url
    assert_response :success
  end

end
