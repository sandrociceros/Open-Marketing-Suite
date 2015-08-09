class AddPlaceholderTextToFormsQuestion < ActiveRecord::Migration
  def change
    add_column :forms_questions, :placeholder_text, :string
  end
end
