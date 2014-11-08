require 'test_helper'

class FeelsControllerTest < ActionController::TestCase
  setup do
    @feel = feels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feel" do
    assert_difference('Feel.count') do
      post :create, feel: { name: @feel.name }
    end

    assert_redirected_to feel_path(assigns(:feel))
  end

  test "should show feel" do
    get :show, id: @feel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feel
    assert_response :success
  end

  test "should update feel" do
    patch :update, id: @feel, feel: { name: @feel.name }
    assert_redirected_to feel_path(assigns(:feel))
  end

  test "should destroy feel" do
    assert_difference('Feel.count', -1) do
      delete :destroy, id: @feel
    end

    assert_redirected_to feels_path
  end
end
