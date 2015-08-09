class CreateFormsEntries < ActiveRecord::Migration
  def change
    create_table :forms_entries do |t|
      t.references :set, index: true

      t.timestamps null: false
    end
    add_foreign_key :forms_entries, :sets
  end
end
