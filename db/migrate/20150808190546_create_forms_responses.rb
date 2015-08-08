class CreateFormsResponses < ActiveRecord::Migration
  def change
    create_table :forms_responses do |t|
      t.references :forms_question, index: true
      t.references :forms_set, index: true
      t.text :response_text
      t.references :forms_field_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :forms_responses, :forms_questions
    add_foreign_key :forms_responses, :forms_sets
    add_foreign_key :forms_responses, :forms_field_types
  end
end
