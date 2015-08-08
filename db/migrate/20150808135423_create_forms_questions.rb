class CreateFormsQuestions < ActiveRecord::Migration
  def change
    create_table :forms_questions do |t|
      t.text :title
      t.integer :position
      t.references :set, index: true
      t.references :field_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :forms_questions, :sets
    add_foreign_key :forms_questions, :field_types
  end
end
