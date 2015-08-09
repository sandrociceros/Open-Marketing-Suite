require 'test_helper'

class Forms::SubmissionsControllerTest < ActionController::TestCase
  setup do
    @forms_submission = forms_submissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms_submissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forms_submission" do
    assert_difference('Forms::Submission.count') do
      post :create, forms_submission: { set_id: @forms_submission.set_id }
    end

    assert_redirected_to forms_submission_path(assigns(:forms_submission))
  end

  test "should show forms_submission" do
    get :show, id: @forms_submission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forms_submission
    assert_response :success
  end

  test "should update forms_submission" do
    patch :update, id: @forms_submission, forms_submission: { set_id: @forms_submission.set_id }
    assert_redirected_to forms_submission_path(assigns(:forms_submission))
  end

  test "should destroy forms_submission" do
    assert_difference('Forms::Submission.count', -1) do
      delete :destroy, id: @forms_submission
    end

    assert_redirected_to forms_submissions_path
  end
end
