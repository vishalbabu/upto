require "test_helper"

class UpdatingUsersTest < ActionDispatch::IntegrationTest
  test "users#update updates user by id" do
    patch "/users/#{users(:aru).id}",
      { user:
        { name: "Shome Arumoy" }
      }.to_json,
      { "Accept" => Mime::JSON, "Content-Type" => Mime::JSON.to_s }

      assert_equal 200, response.status
      assert_equal "Shome Arumoy", users(:aru).reload.name
  end

  test "users#updates does not update user without valid params" do
    patch "/users/#{users(:aru).id}",
      { user:
        { name: nil }
      }.to_json,
      { "Accept" => Mime::JSON, "Content-Type" => Mime::JSON.to_s }

      assert_equal 422, response.status
  end
end
