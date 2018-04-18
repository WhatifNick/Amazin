require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get customers_form_url
    assert_response :success
  end

end
