require "test_helper"

class InputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @input = inputs(:one)
  end

  test "should get index" do
    get inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_input_url
    assert_response :success
  end

  test "should create input" do
    assert_difference('Input.count') do
      post inputs_url, params: { input: { input_date: @input.input_date, invoice: @input.invoice, location: @input.location, price: @input.price, product_id: @input.product_id, quantity: @input.quantity, supplier_id: @input.supplier_id, user_id: @input.user_id } }
    end

    assert_redirected_to input_url(Input.last)
  end

  test "should show input" do
    get input_url(@input)
    assert_response :success
  end

  test "should get edit" do
    get edit_input_url(@input)
    assert_response :success
  end

  test "should update input" do
    patch input_url(@input), params: { input: { input_date: @input.input_date, invoice: @input.invoice, location: @input.location, price: @input.price, product_id: @input.product_id, quantity: @input.quantity, supplier_id: @input.supplier_id, user_id: @input.user_id } }
    assert_redirected_to input_url(@input)
  end

  test "should destroy input" do
    assert_difference('Input.count', -1) do
      delete input_url(@input)
    end

    assert_redirected_to inputs_url
  end
end
