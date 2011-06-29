require 'test_helper'

class HazardsControllerTest < ActionController::TestCase
  setup do
    @hazard = hazards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hazards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hazard" do
    assert_difference('Hazard.count') do
      post :create, hazard: @hazard.attributes
    end

    assert_redirected_to hazard_path(assigns(:hazard))
  end

  test "should show hazard" do
    get :show, id: @hazard.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hazard.to_param
    assert_response :success
  end

  test "should update hazard" do
    put :update, id: @hazard.to_param, hazard: @hazard.attributes
    assert_redirected_to hazard_path(assigns(:hazard))
  end

  test "should destroy hazard" do
    assert_difference('Hazard.count', -1) do
      delete :destroy, id: @hazard.to_param
    end

    assert_redirected_to hazards_path
  end
end
