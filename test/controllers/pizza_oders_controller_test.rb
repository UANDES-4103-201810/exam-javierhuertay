require 'test_helper'

class PizzaOdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza_oder = pizza_oders(:one)
  end

  test "should get index" do
    get pizza_oders_url
    assert_response :success
  end

  test "should get new" do
    get new_pizza_oder_url
    assert_response :success
  end

  test "should create pizza_oder" do
    assert_difference('PizzaOder.count') do
      post pizza_oders_url, params: { pizza_oder: { order_id: @pizza_oder.order_id, pizza_id: @pizza_oder.pizza_id } }
    end

    assert_redirected_to pizza_oder_url(PizzaOder.last)
  end

  test "should show pizza_oder" do
    get pizza_oder_url(@pizza_oder)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizza_oder_url(@pizza_oder)
    assert_response :success
  end

  test "should update pizza_oder" do
    patch pizza_oder_url(@pizza_oder), params: { pizza_oder: { order_id: @pizza_oder.order_id, pizza_id: @pizza_oder.pizza_id } }
    assert_redirected_to pizza_oder_url(@pizza_oder)
  end

  test "should destroy pizza_oder" do
    assert_difference('PizzaOder.count', -1) do
      delete pizza_oder_url(@pizza_oder)
    end

    assert_redirected_to pizza_oders_url
  end
end
