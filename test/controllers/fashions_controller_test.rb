require "test_helper"

class FashionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fashions_index_url
    assert_response :success
  end

  test "should get new" do
    get fashions_new_url
    assert_response :success
  end

  test "should get create" do
    get fashions_create_url
    assert_response :success
  end

  test "should get show" do
    get fashions_show_url
    assert_response :success
  end

  test "should get edit" do
    get fashions_edit_url
    assert_response :success
  end

  test "should get update" do
    get fashions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fashions_destroy_url
    assert_response :success
  end
end
