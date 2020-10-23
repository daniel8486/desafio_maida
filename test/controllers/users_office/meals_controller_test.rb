require 'test_helper'

class UsersOffice::MealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_office_meals_index_url
    assert_response :success
  end

end
