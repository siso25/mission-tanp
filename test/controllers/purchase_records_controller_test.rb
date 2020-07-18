require 'test_helper'

class PurchaseRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get purchase_records_create_url
    assert_response :success
  end

end
