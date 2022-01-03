require "test_helper"

class AdminPageControllerTest < ActionDispatch::IntegrationTest
  test "should get category" do
    get admin_page_category_url
    assert_response :success
  end
end
