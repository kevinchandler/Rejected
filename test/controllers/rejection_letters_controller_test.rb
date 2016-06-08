require 'test_helper'

class RejectionLettersControllerTest < ActionController::TestCase
  setup do
    @rejection_letter = rejection_letters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rejection_letters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rejection_letter" do
    assert_difference('RejectionLetter.count') do
      post :create, rejection_letter: {  }
    end

    assert_redirected_to rejection_letter_path(assigns(:rejection_letter))
  end

  test "should show rejection_letter" do
    get :show, id: @rejection_letter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rejection_letter
    assert_response :success
  end

  test "should update rejection_letter" do
    patch :update, id: @rejection_letter, rejection_letter: {  }
    assert_redirected_to rejection_letter_path(assigns(:rejection_letter))
  end

  test "should destroy rejection_letter" do
    assert_difference('RejectionLetter.count', -1) do
      delete :destroy, id: @rejection_letter
    end

    assert_redirected_to rejection_letters_path
  end
end
