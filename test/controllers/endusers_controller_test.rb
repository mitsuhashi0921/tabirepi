require 'test_helper'

class EndusersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get endusers_show_url
    assert_response :success
  end

end
