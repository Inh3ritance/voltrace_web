require 'test_helper'

class VoltraceMainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get voltrace_main_home_url
    assert_response :success
  end

  test "should get about" do
    get voltrace_main_about_url
    assert_response :success
  end

  test "should get contact_us" do
    get voltrace_main_contact_us_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get voltrace_main_privacy_policy_url
    assert_response :success
  end

end
