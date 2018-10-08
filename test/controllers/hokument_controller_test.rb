require 'test_helper'

class HokumentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hokument_index_url
    assert_response :success
  end

  test "should get new" do
    get hokument_new_url
    assert_response :success
  end

  test "should get create" do
    get hokument_create_url
    assert_response :success
  end

  test "should get update" do
    get hokument_update_url
    assert_response :success
  end

end
