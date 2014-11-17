require 'test_helper'

class UserClubsControllerTest < ActionController::TestCase
  setup do
    @user_club = user_clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_club" do
    assert_difference('UserClub.count') do
      post :create, user_club: { club_id: @user_club.club_id, join_date: @user_club.join_date, user_id: @user_club.user_id }
    end

    assert_redirected_to user_club_path(assigns(:user_club))
  end

  test "should show user_club" do
    get :show, id: @user_club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_club
    assert_response :success
  end

  test "should update user_club" do
    patch :update, id: @user_club, user_club: { club_id: @user_club.club_id, join_date: @user_club.join_date, user_id: @user_club.user_id }
    assert_redirected_to user_club_path(assigns(:user_club))
  end

  test "should destroy user_club" do
    assert_difference('UserClub.count', -1) do
      delete :destroy, id: @user_club
    end

    assert_redirected_to user_clubs_path
  end
end
