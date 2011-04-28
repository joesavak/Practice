require 'test_helper'

class TherapistsControllerTest < ActionController::TestCase
  setup do
    @therapist = therapists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:therapists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create therapist" do
    assert_difference('Therapist.count') do
      post :create, :therapist => @therapist.attributes
    end

    assert_redirected_to therapist_path(assigns(:therapist))
  end

  test "should show therapist" do
    get :show, :id => @therapist.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @therapist.to_param
    assert_response :success
  end

  test "should update therapist" do
    put :update, :id => @therapist.to_param, :therapist => @therapist.attributes
    assert_redirected_to therapist_path(assigns(:therapist))
  end

  test "should destroy therapist" do
    assert_difference('Therapist.count', -1) do
      delete :destroy, :id => @therapist.to_param
    end

    assert_redirected_to therapists_path
  end
end
