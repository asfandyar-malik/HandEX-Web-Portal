require "application_system_test_case"

class TradeinfosTest < ApplicationSystemTestCase
  setup do
    @tradeinfo = tradeinfos(:one)
  end

  test "visiting the index" do
    visit tradeinfos_url
    assert_selector "h1", text: "Tradeinfos"
  end

  test "creating a Tradeinfo" do
    visit tradeinfos_url
    click_on "New Tradeinfo"

    click_on "Create Tradeinfo"

    assert_text "Tradeinfo was successfully created"
    click_on "Back"
  end

  test "updating a Tradeinfo" do
    visit tradeinfos_url
    click_on "Edit", match: :first

    click_on "Update Tradeinfo"

    assert_text "Tradeinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Tradeinfo" do
    visit tradeinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tradeinfo was successfully destroyed"
  end
end
