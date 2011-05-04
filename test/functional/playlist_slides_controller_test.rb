require 'test_helper'

class PlaylistSlidesControllerTest < ActionController::TestCase
  setup do
    @playlist_slide = playlist_slides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playlist_slides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playlist_slide" do
    assert_difference('PlaylistSlide.count') do
      post :create, :playlist_slide => @playlist_slide.attributes
    end

    assert_redirected_to playlist_slide_path(assigns(:playlist_slide))
  end

  test "should show playlist_slide" do
    get :show, :id => @playlist_slide.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @playlist_slide.to_param
    assert_response :success
  end

  test "should update playlist_slide" do
    put :update, :id => @playlist_slide.to_param, :playlist_slide => @playlist_slide.attributes
    assert_redirected_to playlist_slide_path(assigns(:playlist_slide))
  end

  test "should destroy playlist_slide" do
    assert_difference('PlaylistSlide.count', -1) do
      delete :destroy, :id => @playlist_slide.to_param
    end

    assert_redirected_to playlist_slides_path
  end
end
