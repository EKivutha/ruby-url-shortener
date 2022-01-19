require "test_helper"

class ShortenerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shortener_index_url
    assert_response :success
  end
end
