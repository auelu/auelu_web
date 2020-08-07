require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get schedule" do
    get static_pages_schedule_url
    assert_response :success
  end

end
