require 'test_helper'

class PurchaseDetailsControllerTest < ActionController::TestCase
  setup do
    @purchase_detail = purchase_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_detail" do
    assert_difference('PurchaseDetail.count') do
      post :create, purchase_detail: { cantidad: @purchase_detail.cantidad }
    end

    assert_redirected_to purchase_detail_path(assigns(:purchase_detail))
  end

  test "should show purchase_detail" do
    get :show, id: @purchase_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_detail
    assert_response :success
  end

  test "should update purchase_detail" do
    patch :update, id: @purchase_detail, purchase_detail: { cantidad: @purchase_detail.cantidad }
    assert_redirected_to purchase_detail_path(assigns(:purchase_detail))
  end

  test "should destroy purchase_detail" do
    assert_difference('PurchaseDetail.count', -1) do
      delete :destroy, id: @purchase_detail
    end

    assert_redirected_to purchase_details_path
  end
end
