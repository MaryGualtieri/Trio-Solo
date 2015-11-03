require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get Us" do
    get :Us
    assert_response :success
  end

end
