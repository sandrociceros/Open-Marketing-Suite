require 'test_helper'

class Forms::FieldTypesControllerTest < ActionController::TestCase
  setup do
    @forms_field_type = forms_field_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms_field_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forms_field_type" do
    assert_difference('Forms::FieldType.count') do
      post :create, forms_field_type: { description: @forms_field_type.description, name: @forms_field_type.name, shortcode: @forms_field_type.shortcode }
    end

    assert_redirected_to forms_field_type_path(assigns(:forms_field_type))
  end

  test "should show forms_field_type" do
    get :show, id: @forms_field_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forms_field_type
    assert_response :success
  end

  test "should update forms_field_type" do
    patch :update, id: @forms_field_type, forms_field_type: { description: @forms_field_type.description, name: @forms_field_type.name, shortcode: @forms_field_type.shortcode }
    assert_redirected_to forms_field_type_path(assigns(:forms_field_type))
  end

  test "should destroy forms_field_type" do
    assert_difference('Forms::FieldType.count', -1) do
      delete :destroy, id: @forms_field_type
    end

    assert_redirected_to forms_field_types_path
  end
end
