require 'test_helper'

class ImportControllerTest < ActionDispatch::IntegrationTest
  test "should get show_form" do
    get import_show_form_url
    assert_response :success
  end

  test "should get review" do
    get import_review_url
    assert_response :success
  end

  test "should get perform" do
    get import_perform_url
    assert_response :success
  end

end
