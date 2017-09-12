require 'test_helper'

class ContactInputControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contact_input_new_url
    assert_response :success
  end

end
