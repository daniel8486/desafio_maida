require 'test_helper'

class UsersOffice::ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_office_profile_index_url
    assert_response :success
  end

end
