require 'test_helper'

class HeyasControllerTest < ActionController::TestCase
  setup do
    @heya = heyas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heyas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heya" do
    assert_difference('Heya.count') do
      post :create, heya: { ondo: @heya.ondo, shitudo: @heya.shitudo }
    end

    assert_redirected_to heya_path(assigns(:heya))
  end

  test "should show heya" do
    get :show, id: @heya
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @heya
    assert_response :success
  end

  test "should update heya" do
    patch :update, id: @heya, heya: { ondo: @heya.ondo, shitudo: @heya.shitudo }
    assert_redirected_to heya_path(assigns(:heya))
  end

  test "should destroy heya" do
    assert_difference('Heya.count', -1) do
      delete :destroy, id: @heya
    end

    assert_redirected_to heyas_path
  end
end
