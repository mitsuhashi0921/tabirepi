require 'test_helper'

class AdminRankingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_rankings_index_url
    assert_response :success
  end

end
