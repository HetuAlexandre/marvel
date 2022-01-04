require "test_helper"

class AvengersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avenger = avengers(:one)
  end

  test "should get index" do
    get avengers_url
    assert_response :success
  end

  test "should get new" do
    get new_avenger_url
    assert_response :success
  end

  test "should create avenger" do
    assert_difference('Avenger.count') do
      post avengers_url, params: { avenger: { age: @avenger.age, description: @avenger.description, hero_name: @avenger.hero_name, real_name: @avenger.real_name, statut: @avenger.statut } }
    end

    assert_redirected_to avenger_url(Avenger.last)
  end

  test "should show avenger" do
    get avenger_url(@avenger)
    assert_response :success
  end

  test "should get edit" do
    get edit_avenger_url(@avenger)
    assert_response :success
  end

  test "should update avenger" do
    patch avenger_url(@avenger), params: { avenger: { age: @avenger.age, description: @avenger.description, hero_name: @avenger.hero_name, real_name: @avenger.real_name, statut: @avenger.statut } }
    assert_redirected_to avenger_url(@avenger)
  end

  test "should destroy avenger" do
    assert_difference('Avenger.count', -1) do
      delete avenger_url(@avenger)
    end

    assert_redirected_to avengers_url
  end
end
