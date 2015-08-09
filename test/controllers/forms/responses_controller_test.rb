require 'test_helper'

class Forms::ResponsesControllerTest < ActionController::TestCase
  setup do
    @forms_response = forms_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forms_response" do
    assert_difference('Forms::Response.count') do
      post :create, forms_response: { question_id: @forms_response.question_id, response_boolean: @forms_response.response_boolean, response_selection: @forms_response.response_selection, response_text: @forms_response.response_text, set_id: @forms_response.set_id }
    end

    assert_redirected_to forms_response_path(assigns(:forms_response))
  end

  test "should show forms_response" do
    get :show, id: @forms_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forms_response
    assert_response :success
  end

  test "should update forms_response" do
    patch :update, id: @forms_response, forms_response: { question_id: @forms_response.question_id, response_boolean: @forms_response.response_boolean, response_selection: @forms_response.response_selection, response_text: @forms_response.response_text, set_id: @forms_response.set_id }
    assert_redirected_to forms_response_path(assigns(:forms_response))
  end

  test "should destroy forms_response" do
    assert_difference('Forms::Response.count', -1) do
      delete :destroy, id: @forms_response
    end

    assert_redirected_to forms_responses_path
  end
end
