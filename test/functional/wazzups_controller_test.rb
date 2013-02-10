require 'test_helper'

class WazzupsControllerTest < ActionController::TestCase
  setup do
    @wazzup = wazzups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wazzups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wazzup" do
    assert_difference('Wazzup.count') do
      post :create, wazzup: @wazzup.attributes
    end

    assert_redirected_to wazzup_path(assigns(:wazzup))
  end

  test "should show wazzup" do
    get :show, id: @wazzup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wazzup
    assert_response :success
  end

  test "should update wazzup" do
    put :update, id: @wazzup, wazzup: @wazzup.attributes
    assert_redirected_to wazzup_path(assigns(:wazzup))
  end

  test "should destroy wazzup" do
    assert_difference('Wazzup.count', -1) do
      delete :destroy, id: @wazzup
    end

    assert_redirected_to wazzups_path
  end
end
