require 'test_helper'

class VehicleAdsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_ad" do
    assert_difference('VehicleAd.count') do
      post :create, :vehicle_ad => { }
    end

    assert_redirected_to vehicle_ad_path(assigns(:vehicle_ad))
  end

  test "should show vehicle_ad" do
    get :show, :id => vehicle_ads(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vehicle_ads(:one).to_param
    assert_response :success
  end

  test "should update vehicle_ad" do
    put :update, :id => vehicle_ads(:one).to_param, :vehicle_ad => { }
    assert_redirected_to vehicle_ad_path(assigns(:vehicle_ad))
  end

  test "should destroy vehicle_ad" do
    assert_difference('VehicleAd.count', -1) do
      delete :destroy, :id => vehicle_ads(:one).to_param
    end

    assert_redirected_to vehicle_ads_path
  end
end
