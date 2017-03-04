require 'test_helper'

class SacredHeartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sacred_heart = sacred_hearts(:one)
  end

  test "should get index" do
    get sacred_hearts_url
    assert_response :success
  end

  test "should get new" do
    get new_sacred_heart_url
    assert_response :success
  end

  test "should create sacred_heart" do
    assert_difference('SacredHeart.count') do
      post sacred_hearts_url, params: { sacred_heart: { age: @sacred_heart.age, donationDest: @sacred_heart.donationDest, goalAmount: @sacred_heart.goalAmount, locationCounty: @sacred_heart.locationCounty, name: @sacred_heart.name, photo: @sacred_heart.photo, story: @sacred_heart.story, summary: @sacred_heart.summary } }
    end

    assert_redirected_to sacred_heart_url(SacredHeart.last)
  end

  test "should show sacred_heart" do
    get sacred_heart_url(@sacred_heart)
    assert_response :success
  end

  test "should get edit" do
    get edit_sacred_heart_url(@sacred_heart)
    assert_response :success
  end

  test "should update sacred_heart" do
    patch sacred_heart_url(@sacred_heart), params: { sacred_heart: { age: @sacred_heart.age, donationDest: @sacred_heart.donationDest, goalAmount: @sacred_heart.goalAmount, locationCounty: @sacred_heart.locationCounty, name: @sacred_heart.name, photo: @sacred_heart.photo, story: @sacred_heart.story, summary: @sacred_heart.summary } }
    assert_redirected_to sacred_heart_url(@sacred_heart)
  end

  test "should destroy sacred_heart" do
    assert_difference('SacredHeart.count', -1) do
      delete sacred_heart_url(@sacred_heart)
    end

    assert_redirected_to sacred_hearts_url
  end
end
