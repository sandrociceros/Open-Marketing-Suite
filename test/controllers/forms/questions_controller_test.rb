require 'test_helper'

class Forms::QuestionsControllerTest < ActionController::TestCase
  setup do
    @forms_question = forms_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forms_question" do
    assert_difference('Forms::Question.count') do
      post :create, forms_question: { field_type_id: @forms_question.field_type_id, placeholder_text: @forms_question.placeholder_text, position: @forms_question.position, set_id: @forms_question.set_id, title: @forms_question.title }
    end

    assert_redirected_to forms_question_path(assigns(:forms_question))
  end

  test "should show forms_question" do
    get :show, id: @forms_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forms_question
    assert_response :success
  end

  test "should update forms_question" do
    patch :update, id: @forms_question, forms_question: { field_type_id: @forms_question.field_type_id, placeholder_text: @forms_question.placeholder_text, position: @forms_question.position, set_id: @forms_question.set_id, title: @forms_question.title }
    assert_redirected_to forms_question_path(assigns(:forms_question))
  end

  test "should destroy forms_question" do
    assert_difference('Forms::Question.count', -1) do
      delete :destroy, id: @forms_question
    end

    assert_redirected_to forms_questions_path
  end
end
