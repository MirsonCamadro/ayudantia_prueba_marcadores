require 'test_helper'

class ProductTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_types_index_url
    assert_response :success
  end

end
