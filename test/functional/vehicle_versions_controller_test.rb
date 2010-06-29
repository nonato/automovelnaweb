require 'test_helper'

class VehicleVersionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_version" do
    assert_difference('VehicleVersion.count') do
      post :create, :vehicle_version => { }
    end

    assert_redirected_to vehicle_version_path(assigns(:vehicle_version))
  end

  test "should show vehicle_version" do
    get :show, :id => vehicle_versions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vehicle_versions(:one).to_param
    assert_response :success
  end

  test "should update vehicle_version" do
    put :update, :id => vehicle_versions(:one).to_param, :vehicle_version => { }
    assert_redirected_to vehicle_version_path(assigns(:vehicle_version))
  end

  test "should destroy vehicle_version" do
    assert_difference('VehicleVersion.count', -1) do
      delete :destroy, :id => vehicle_versions(:one).to_param
    end

    assert_redirected_to vehicle_versions_path
  end
end
