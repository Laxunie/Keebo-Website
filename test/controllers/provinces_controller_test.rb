require "test_helper"

class ProvincesControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get provinces_name:string_url
    assert_response :success
  end
end
