require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get news" do
    get static_pages_news_url
    assert_response :success
  end

  test "should get introduction" do
    get static_pages_introduction_url
    assert_response :success
  end

  test "should get record" do
    get static_pages_record_url
    assert_response :success
  end

  test "should get inquiry" do
    get static_pages_inquiry_url
    assert_response :success
  end

end
