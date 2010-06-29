require 'test_helper'

class VehicleAdvertisementsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_advertisements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_advertisement" do
    assert_difference('VehicleAdvertisement.count') do
      post :create, :vehicle_advertisement => { }
    end

    assert_redirected_to vehicle_advertisement_path(assigns(:vehicle_advertisement))
  end

  test "should show vehicle_advertisement" do
    get :show, :id => vehicle_advertisements(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vehicle_advertisements(:one).to_param
    assert_response :success
  end

  test "should update vehicle_advertisement" do
    put :update, :id => vehicle_advertisements(:one).to_param, :vehicle_advertisement => { }
    assert_redirected_to vehicle_advertisement_path(assigns(:vehicle_advertisement))
  end

  test "should destroy vehicle_advertisement" do
    assert_difference('VehicleAdvertisement.count', -1) do
      delete :destroy, :id => vehicle_advertisements(:one).to_param
    end

    assert_redirected_to vehicle_advertisements_path
  end
end
