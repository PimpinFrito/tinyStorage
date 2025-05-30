require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url # or pages_home_url if you use resources
    assert_response :success
    assert_select "#heroBrand", "Tiny Storage" # Adjust text to match your actual home page
  end

  # test "should get about" do
  #   get about_url # or pages_about_url
  #   assert_response :success
  #   assert_select "h1", "About" # Adjust as needed
  # end
end
