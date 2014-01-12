require 'test_helper'

class ContentusersControllerTest < ActionController::TestCase
  setup do
    @contentuser = contentusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contentusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contentuser" do
    assert_difference('Contentuser.count') do
      post :create, contentuser: { user_id: @contentuser.user_id, word_id: @contentuser.word_id }
    end

    assert_redirected_to contentuser_path(assigns(:contentuser))
  end

  test "should show contentuser" do
    get :show, id: @contentuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contentuser
    assert_response :success
  end

  test "should update contentuser" do
    put :update, id: @contentuser, contentuser: { user_id: @contentuser.user_id, word_id: @contentuser.word_id }
    assert_redirected_to contentuser_path(assigns(:contentuser))
  end

  test "should destroy contentuser" do
    assert_difference('Contentuser.count', -1) do
      delete :destroy, id: @contentuser
    end

    assert_redirected_to contentusers_path
  end
end
