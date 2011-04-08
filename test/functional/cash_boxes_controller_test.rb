require 'test_helper'

class CashBoxesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cash_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cash_box" do
    assert_difference('CashBox.count') do
      post :create, :cash_box => { }
    end

    assert_redirected_to cash_box_path(assigns(:cash_box))
  end

  test "should show cash_box" do
    get :show, :id => cash_boxes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cash_boxes(:one).to_param
    assert_response :success
  end

  test "should update cash_box" do
    put :update, :id => cash_boxes(:one).to_param, :cash_box => { }
    assert_redirected_to cash_box_path(assigns(:cash_box))
  end

  test "should destroy cash_box" do
    assert_difference('CashBox.count', -1) do
      delete :destroy, :id => cash_boxes(:one).to_param
    end

    assert_redirected_to cash_boxes_path
  end
end
