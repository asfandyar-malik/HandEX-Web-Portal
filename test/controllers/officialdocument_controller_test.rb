require 'test_helper'

class OfficialdocumentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get officialdocument_index_url
    assert_response :success
  end

  test "should get new" do
    get officialdocument_new_url
    assert_response :success
  end

  test "should get create" do
    get officialdocument_create_url
    assert_response :success
  end

  test "should get update" do
    get officialdocument_update_url
    assert_response :success
  end

end
