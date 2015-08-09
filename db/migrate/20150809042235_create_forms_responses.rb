class CreateFormsResponses < ActiveRecord::Migration
  def change
    create_table :forms_responses do |t|
      t.references :question, index: true
      t.references :set, index: true
      t.text :response_text
      t.boolean :response_boolean
      t.integer :response_selection

      t.timestamps null: false
    end
    add_foreign_key :forms_responses, :questions
    add_foreign_key :forms_responses, :sets
  end
end
