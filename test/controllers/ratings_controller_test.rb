require "test_helper"

class RatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rating = ratings(:one)
  end

  test "should get index" do
    get ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_rating_url
    assert_response :success
  end

  test "should create rating" do
    assert_difference('Rating.count') do
      post ratings_url, params: { rating: { fun_type: @rating.fun_type, suggested_direction: @rating.suggested_direction, water_requirement: @rating.water_requirement } }
    end

    assert_redirected_to rating_url(Rating.last)
  end

  test "should show rating" do
    get rating_url(@rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_rating_url(@rating)
    assert_response :success
  end

  test "should update rating" do
    patch rating_url(@rating), params: { rating: { fun_type: @rating.fun_type, suggested_direction: @rating.suggested_direction, water_requirement: @rating.water_requirement } }
    assert_redirected_to rating_url(@rating)
  end

  test "should destroy rating" do
    assert_difference('Rating.count', -1) do
      delete rating_url(@rating)
    end

    assert_redirected_to ratings_url
  end
end
