require "test_helper"

class DeletingUsersTest < ActionDispatch::IntegrationTest
  test "users#delete archives user by id" do
    delete "/users/#{users(:aru).id}"

    assert_equal 204, response.status
  end
end
