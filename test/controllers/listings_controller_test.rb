require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { body_style: @listing.body_style, condition: @listing.condition, cylinders: @listing.cylinders, engine_size: @listing.engine_size, fuel_economy: @listing.fuel_economy, fuel_type: @listing.fuel_type, make: @listing.make, mileage: @listing.mileage, model: @listing.model, power: @listing.power, transmission: @listing.transmission, vin: @listing.vin, year: @listing.year }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { body_style: @listing.body_style, condition: @listing.condition, cylinders: @listing.cylinders, engine_size: @listing.engine_size, fuel_economy: @listing.fuel_economy, fuel_type: @listing.fuel_type, make: @listing.make, mileage: @listing.mileage, model: @listing.model, power: @listing.power, transmission: @listing.transmission, vin: @listing.vin, year: @listing.year }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
