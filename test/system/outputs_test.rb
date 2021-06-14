require "application_system_test_case"

class OutputsTest < ApplicationSystemTestCase
  setup do
    @output = outputs(:one)
  end

  test "visiting the index" do
    visit outputs_url
    assert_selector "h1", text: "Outputs"
  end

  test "creating a Output" do
    visit outputs_url
    click_on "New Output"

    fill_in "Invoice", with: @output.invoice
    fill_in "Output date", with: @output.output_date
    fill_in "Price", with: @output.price
    fill_in "Product", with: @output.product_id
    fill_in "Quantity", with: @output.quantity
    fill_in "Receiving area", with: @output.receiving_area
    fill_in "Receiving person", with: @output.receiving_person
    fill_in "User", with: @output.user_id
    click_on "Create Output"

    assert_text "Output was successfully created"
    click_on "Back"
  end

  test "updating a Output" do
    visit outputs_url
    click_on "Edit", match: :first

    fill_in "Invoice", with: @output.invoice
    fill_in "Output date", with: @output.output_date
    fill_in "Price", with: @output.price
    fill_in "Product", with: @output.product_id
    fill_in "Quantity", with: @output.quantity
    fill_in "Receiving area", with: @output.receiving_area
    fill_in "Receiving person", with: @output.receiving_person
    fill_in "User", with: @output.user_id
    click_on "Update Output"

    assert_text "Output was successfully updated"
    click_on "Back"
  end

  test "destroying a Output" do
    visit outputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Output was successfully destroyed"
  end
end
