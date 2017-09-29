require 'test_helper'

class VideocallControllerTest < ActionController::TestCase
  test "should get vidyoconnector" do
    get :vidyoconnector
    assert_response :success
  end

end
