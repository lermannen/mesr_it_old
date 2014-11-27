require 'test_helper'

class FeedsCreateTest < ActionDispatch::IntegrationTest
  test "invalid feed information" do
  	get new_feed_path
  	assert_no_difference 'Feed.count' do
  		post feeds_path, feed: {name: "", uri: ""}
  	end
  	assert_template 'feeds/new'
  end

  test "valid feed information" do
  	get new_feed_path
  	assert_difference 'Feed.count', 1 do
  		post_via_redirect feeds_path, feed: {name: "Test feed", uri: "http://www.example.com/feed"}
  	end
  	assert_template 'feeds/show'
  end
end
