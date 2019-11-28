require 'test_helper'

class RaiseControllerTest < ActionDispatch::IntegrationTest
  test "should get exception" do
    get raise_exception_url
    assert_response :success
  end

end
