require "application_system_test_case"

class HasStoresTest < ApplicationSystemTestCase
  setup do
    @has_store = has_stores(:one)
  end

  test "visiting the index" do
    visit has_stores_url
    assert_selector "h1", text: "Has Stores"
  end

  test "creating a Has store" do
    visit has_stores_url
    click_on "New Has Store"

    fill_in "Product", with: @has_store.Product
    fill_in "Store", with: @has_store.Store
    click_on "Create Has store"

    assert_text "Has store was successfully created"
    click_on "Back"
  end

  test "updating a Has store" do
    visit has_stores_url
    click_on "Edit", match: :first

    fill_in "Product", with: @has_store.Product
    fill_in "Store", with: @has_store.Store
    click_on "Update Has store"

    assert_text "Has store was successfully updated"
    click_on "Back"
  end

  test "destroying a Has store" do
    visit has_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Has store was successfully destroyed"
  end
end
