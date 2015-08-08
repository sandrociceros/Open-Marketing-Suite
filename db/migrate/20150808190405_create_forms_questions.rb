class CreateFormsQuestions < ActiveRecord::Migration
  def change
    create_table :forms_questions do |t|
      t.text :title
      t.integer :position
      t.references :forms_set, index: true
      t.references :forms_field_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :forms_questions, :forms_sets
    add_foreign_key :forms_questions, :forms_field_types
  end
end
