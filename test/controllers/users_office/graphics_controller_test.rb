require 'test_helper'

class UsersOffice::GraphicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_office_graphics_index_url
    assert_response :success
  end

end
