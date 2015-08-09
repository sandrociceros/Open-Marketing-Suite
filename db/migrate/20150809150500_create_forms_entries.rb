class CreateFormsEntries < ActiveRecord::Migration
  def change
    create_table :forms_entries do |t|

      t.timestamps null: false
    end
  end
end
