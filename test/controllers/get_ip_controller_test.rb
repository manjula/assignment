require 'test_helper'

class GetIpControllerTest < ActionDispatch::IntegrationTest
  test "should get get_ip" do
    get get_ip_get_ip_url
    assert_response :success
  end

end
