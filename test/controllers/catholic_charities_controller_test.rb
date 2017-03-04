require 'test_helper'

class CatholicCharitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catholic_charity = catholic_charities(:one)
  end

  test "should get index" do
    get catholic_charities_url
    assert_response :success
  end

  test "should get new" do
    get new_catholic_charity_url
    assert_response :success
  end

  test "should create catholic_charity" do
    assert_difference('CatholicCharity.count') do
      post catholic_charities_url, params: { catholic_charity: { age: @catholic_charity.age, donationDest: @catholic_charity.donationDest, goalAmount: @catholic_charity.goalAmount, locationCounty: @catholic_charity.locationCounty, name: @catholic_charity.name, photo: @catholic_charity.photo, story: @catholic_charity.story, summary: @catholic_charity.summary } }
    end

    assert_redirected_to catholic_charity_url(CatholicCharity.last)
  end

  test "should show catholic_charity" do
    get catholic_charity_url(@catholic_charity)
    assert_response :success
  end

  test "should get edit" do
    get edit_catholic_charity_url(@catholic_charity)
    assert_response :success
  end

  test "should update catholic_charity" do
    patch catholic_charity_url(@catholic_charity), params: { catholic_charity: { age: @catholic_charity.age, donationDest: @catholic_charity.donationDest, goalAmount: @catholic_charity.goalAmount, locationCounty: @catholic_charity.locationCounty, name: @catholic_charity.name, photo: @catholic_charity.photo, story: @catholic_charity.story, summary: @catholic_charity.summary } }
    assert_redirected_to catholic_charity_url(@catholic_charity)
  end

  test "should destroy catholic_charity" do
    assert_difference('CatholicCharity.count', -1) do
      delete catholic_charity_url(@catholic_charity)
    end

    assert_redirected_to catholic_charities_url
  end
end
