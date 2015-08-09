class CreateFormsSubmissions < ActiveRecord::Migration
  def change
    create_table :forms_submissions do |t|
      t.references :set, index: true

      t.timestamps null: false
    end
    add_foreign_key :forms_submissions, :sets
  end
end
