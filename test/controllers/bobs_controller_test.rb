require 'test_helper'

class BobsControllerTest < ActionController::TestCase
  setup do
    @bob = bobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bob" do
    assert_difference('Bob.count') do
      post :create, bob: {  }
    end

    assert_redirected_to bob_path(assigns(:bob))
  end

  test "should show bob" do
    get :show, id: @bob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bob
    assert_response :success
  end

  test "should update bob" do
    patch :update, id: @bob, bob: {  }
    assert_redirected_to bob_path(assigns(:bob))
  end

  test "should destroy bob" do
    assert_difference('Bob.count', -1) do
      delete :destroy, id: @bob
    end

    assert_redirected_to bobs_path
  end
end
