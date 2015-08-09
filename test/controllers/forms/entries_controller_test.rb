require 'test_helper'

class Forms::EntriesControllerTest < ActionController::TestCase
  setup do
    @forms_entry = forms_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forms_entry" do
    assert_difference('Forms::Entry.count') do
      post :create, forms_entry: {  }
    end

    assert_redirected_to forms_entry_path(assigns(:forms_entry))
  end

  test "should show forms_entry" do
    get :show, id: @forms_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forms_entry
    assert_response :success
  end

  test "should update forms_entry" do
    patch :update, id: @forms_entry, forms_entry: {  }
    assert_redirected_to forms_entry_path(assigns(:forms_entry))
  end

  test "should destroy forms_entry" do
    assert_difference('Forms::Entry.count', -1) do
      delete :destroy, id: @forms_entry
    end

    assert_redirected_to forms_entries_path
  end
end
