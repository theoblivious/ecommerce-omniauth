require 'test_helper'

class CallbacksControllerTest < ActionController::TestCase
  test "should get idme" do
    get :idme
    assert_response :success
  end

end
