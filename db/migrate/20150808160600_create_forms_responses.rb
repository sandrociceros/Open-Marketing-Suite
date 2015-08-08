class CreateFormsResponses < ActiveRecord::Migration
  def change
    create_table :forms_responses do |t|
      t.references :question, index: true
      t.references :set, index: true
      t.text :response_text
      t.references :field_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :forms_responses, :questions
    add_foreign_key :forms_responses, :sets
    add_foreign_key :forms_responses, :field_types
  end
end
