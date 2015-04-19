require 'test_helper'

class ClassGsControllerTest < ActionController::TestCase
  setup do
    @class_g = class_gs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_gs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_g" do
    assert_difference('ClassG.count') do
      post :create, class_g: { col1: @class_g.col1, col2: @class_g.col2 }
    end

    assert_redirected_to class_g_path(assigns(:class_g))
  end

  test "should show class_g" do
    get :show, id: @class_g
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_g
    assert_response :success
  end

  test "should update class_g" do
    patch :update, id: @class_g, class_g: { col1: @class_g.col1, col2: @class_g.col2 }
    assert_redirected_to class_g_path(assigns(:class_g))
  end

  test "should destroy class_g" do
    assert_difference('ClassG.count', -1) do
      delete :destroy, id: @class_g
    end

    assert_redirected_to class_gs_path
  end
end
