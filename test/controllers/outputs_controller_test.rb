require "test_helper"

class OutputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @output = outputs(:one)
  end

  test "should get index" do
    get outputs_url
    assert_response :success
  end

  test "should get new" do
    get new_output_url
    assert_response :success
  end

  test "should create output" do
    assert_difference('Output.count') do
      post outputs_url, params: { output: { invoice: @output.invoice, output_date: @output.output_date, price: @output.price, product_id: @output.product_id, quantity: @output.quantity, receiving_area: @output.receiving_area, receiving_person: @output.receiving_person, user_id: @output.user_id } }
    end

    assert_redirected_to output_url(Output.last)
  end

  test "should show output" do
    get output_url(@output)
    assert_response :success
  end

  test "should get edit" do
    get edit_output_url(@output)
    assert_response :success
  end

  test "should update output" do
    patch output_url(@output), params: { output: { invoice: @output.invoice, output_date: @output.output_date, price: @output.price, product_id: @output.product_id, quantity: @output.quantity, receiving_area: @output.receiving_area, receiving_person: @output.receiving_person, user_id: @output.user_id } }
    assert_redirected_to output_url(@output)
  end

  test "should destroy output" do
    assert_difference('Output.count', -1) do
      delete output_url(@output)
    end

    assert_redirected_to outputs_url
  end
end
