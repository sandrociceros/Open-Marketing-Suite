class CreateFormsResponses < ActiveRecord::Migration
  def change
    create_table :forms_responses do |t|
      t.references :question, index: true
      t.text :value
      t.references :field_type, index: true
      t.references :submission, index: true

      t.timestamps null: false
    end
    add_foreign_key :forms_responses, :questions
    add_foreign_key :forms_responses, :field_types
    add_foreign_key :forms_responses, :submissions
  end
end
