require 'test_helper'

class UsersOffice::DietsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_office_diets_index_url
    assert_response :success
  end

end
