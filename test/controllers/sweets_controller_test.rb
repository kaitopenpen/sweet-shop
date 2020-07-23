require 'test_helper'

class SweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sweets_new_url
    assert_response :success
  end

end
