require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get years" do
    get :years
    assert_response :success
  end

end
