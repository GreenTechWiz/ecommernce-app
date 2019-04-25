require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:integer" do
    get orders_user_id:integer_url
    assert_response :success
  end

end
