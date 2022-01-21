require "test_helper"

class ShopesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shopes_index_url
    assert_response :success
  end

  test "should get show" do
    get shopes_show_url
    assert_response :success
  end
end
