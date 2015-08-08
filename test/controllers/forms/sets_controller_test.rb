require 'test_helper'

class Forms::SetsControllerTest < ActionController::TestCase
  setup do
    @forms_set = forms_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forms_set" do
    assert_difference('Forms::Set.count') do
      post :create, forms_set: { description: @forms_set.description, name: @forms_set.name }
    end

    assert_redirected_to forms_set_path(assigns(:forms_set))
  end

  test "should show forms_set" do
    get :show, id: @forms_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forms_set
    assert_response :success
  end

  test "should update forms_set" do
    patch :update, id: @forms_set, forms_set: { description: @forms_set.description, name: @forms_set.name }
    assert_redirected_to forms_set_path(assigns(:forms_set))
  end

  test "should destroy forms_set" do
    assert_difference('Forms::Set.count', -1) do
      delete :destroy, id: @forms_set
    end

    assert_redirected_to forms_sets_path
  end
end
