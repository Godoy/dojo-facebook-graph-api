require 'test_helper'

class ApresentarControllerTest < ActionController::TestCase
  test "should get dojo" do
    get :dojo
    assert_response :success
  end

end
