require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get login" do
    get home_login_url
    assert_response :success
  end

  test "should get register" do
    get home_register_url
    assert_response :success
  end

  test "should get signup" do
    get home_signup_url
    assert_response :success
  end

  test "should get logout" do
    get home_logout_url
    assert_response :success
  end

end
