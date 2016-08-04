require "test_helper"

class ListingUsersTest < ActionDispatch::IntegrationTest
  test "users#index returns list of all users" do
    get "/users"

    users = json(response.body)
    names = users.collect { |user| user[:name] }

    assert_equal 200, response.status
    refute_empty response.body
    ["Arumoy Shome", "Ali Vira", "Vishal Babu", "Garrett Hardy"].each do |name|
      assert_includes names, name
    end
  end

  test "users#show returns user by id" do
    get "/users/#{users(:aru).id}"

    user = json(response.body)

    assert_equal 200, response.status
    assert_equal "Arumoy Shome", user[:name]
  end
end
