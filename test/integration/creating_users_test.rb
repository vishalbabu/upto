require "test_helper"

class CreatingUsersTest < ActionDispatch::IntegrationTest
  test "users#create creates users" do
    post "/users",
      { user:
        { name: "John Doe", email: "john@upto.com" }
      }.to_json,
      { "Accept" => Mime::JSON, "Content-Type" => Mime::JSON.to_s }

      assert_equal 204, response.status
  end

  test "users#create does not create users with no name" do
    post "/users",
      { user:
        { name: nil, email: "john@upto.com" }
      }.to_json,
      { "Accept" => Mime::JSON, "Content-Type" => Mime::JSON.to_s }

      assert_equal 422, response.status
      assert_equal Mime::JSON, response.content_type
  end

  test "users#create does not create users with no email" do
    post "/users",
      { user:
        { name: "John Doe", email: nil }
    }.to_json,
    { "Accept" => Mime::JSON, "Content-Type" => Mime::JSON.to_s }

    assert_equal 422, response.status
    assert_equal Mime::JSON, response.content_type
  end

  test "users#create does not create users with duplicate email" do
    post "/users",
      { user:
        { name: "Arumoy", email: "#{users(:aru).email }"}
    }.to_json,
    { "Accept" => Mime::JSON, "Content-Type" => Mime::JSON.to_s }

    assert_equal 422, response.status
    assert_equal Mime::JSON, response.content_type
  end
end
