require 'test_helper'

class DirectoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directory" do
    assert_difference('Directory.count') do
      post :create, :directory => { }
    end

    assert_redirected_to directory_path(assigns(:directory))
  end

  test "should show directory" do
    get :show, :id => directories(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => directories(:one).id
    assert_response :success
  end

  test "should update directory" do
    put :update, :id => directories(:one).id, :directory => { }
    assert_redirected_to directory_path(assigns(:directory))
  end

  test "should destroy directory" do
    assert_difference('Directory.count', -1) do
      delete :destroy, :id => directories(:one).id
    end

    assert_redirected_to directories_path
  end
end
