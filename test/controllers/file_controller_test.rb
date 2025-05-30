require "test_helper"

class FileControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    sign_in @user
    @file = fixture_file_upload('test.txt', 'text/plain')
  end

  test "should get index" do
    get file_list_url
    assert_response :success
    assert_select "h2", text: "My Files"
  end

  test "should get upload page" do
    get upload_url
    assert_response :success
    assert_select "h1", text: "Upload Your File"
  end

  test "should upload file" do
    assert_difference('@user.files.count', 1) do
      post upload_file_url, params: { file: @file }
    end
    assert_redirected_to file_list_url
  end

  test "should delete file" do
    @user.files.attach(io: File.open(Rails.root.join('test/fixtures/files/test.txt')), filename: 'test.txt', content_type: 'text/plain')
    file_id = @user.files.last.id

    assert_difference('@user.files.count', -1) do
      delete delete_file_url(id: file_id)
    end
    assert_redirected_to file_list_url
    assert_equal "File deleted", flash[:notice]
  end

  test "should handle file not found on delete" do
    assert_no_difference('@user.files.count') do
      delete delete_file_url(id: 999999)
    end
    assert_redirected_to file_list_url
    assert_equal "File not found", flash[:notice]
  end
end
