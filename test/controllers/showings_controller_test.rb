require 'test_helper'

class ShowingsControllerTest < ActionController::TestCase
  setup do
    @showing = showings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showing" do
    assert_difference('Showing.count') do
      post :create, showing: { dateAndTime: @showing.dateAndTime, movie_id: @showing.movie_id, theatre_id: @showing.theatre_id }
    end

    assert_redirected_to showing_path(assigns(:showing))
  end

  test "should show showing" do
    get :show, id: @showing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showing
    assert_response :success
  end

  test "should update showing" do
    patch :update, id: @showing, showing: { dateAndTime: @showing.dateAndTime, movie_id: @showing.movie_id, theatre_id: @showing.theatre_id }
    assert_redirected_to showing_path(assigns(:showing))
  end

  test "should destroy showing" do
    assert_difference('Showing.count', -1) do
      delete :destroy, id: @showing
    end

    assert_redirected_to showings_path
  end
end
