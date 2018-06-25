require 'test_helper'

class TradeinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tradeinfo = tradeinfos(:one)
  end

  test "should get index" do
    get tradeinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_tradeinfo_url
    assert_response :success
  end

  test "should create tradeinfo" do
    assert_difference('Tradeinfo.count') do
      post tradeinfos_url, params: { tradeinfo: {  } }
    end

    assert_redirected_to tradeinfo_url(Tradeinfo.last)
  end

  test "should show tradeinfo" do
    get tradeinfo_url(@tradeinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tradeinfo_url(@tradeinfo)
    assert_response :success
  end

  test "should update tradeinfo" do
    patch tradeinfo_url(@tradeinfo), params: { tradeinfo: {  } }
    assert_redirected_to tradeinfo_url(@tradeinfo)
  end

  test "should destroy tradeinfo" do
    assert_difference('Tradeinfo.count', -1) do
      delete tradeinfo_url(@tradeinfo)
    end

    assert_redirected_to tradeinfos_url
  end
end
