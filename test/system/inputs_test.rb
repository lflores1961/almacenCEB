require "application_system_test_case"

class InputsTest < ApplicationSystemTestCase
  setup do
    @input = inputs(:one)
  end

  test "visiting the index" do
    visit inputs_url
    assert_selector "h1", text: "Inputs"
  end

  test "creating a Input" do
    visit inputs_url
    click_on "New Input"

    fill_in "Input date", with: @input.input_date
    fill_in "Invoice", with: @input.invoice
    fill_in "Location", with: @input.location
    fill_in "Price", with: @input.price
    fill_in "Product", with: @input.product_id
    fill_in "Quantity", with: @input.quantity
    fill_in "Supplier", with: @input.supplier_id
    fill_in "User", with: @input.user_id
    click_on "Create Input"

    assert_text "Input was successfully created"
    click_on "Back"
  end

  test "updating a Input" do
    visit inputs_url
    click_on "Edit", match: :first

    fill_in "Input date", with: @input.input_date
    fill_in "Invoice", with: @input.invoice
    fill_in "Location", with: @input.location
    fill_in "Price", with: @input.price
    fill_in "Product", with: @input.product_id
    fill_in "Quantity", with: @input.quantity
    fill_in "Supplier", with: @input.supplier_id
    fill_in "User", with: @input.user_id
    click_on "Update Input"

    assert_text "Input was successfully updated"
    click_on "Back"
  end

  test "destroying a Input" do
    visit inputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Input was successfully destroyed"
  end
end
