class CreateFormsFieldTypes < ActiveRecord::Migration
  def change
    create_table :forms_field_types do |t|
      t.string :name
      t.string :shortcode
      t.text :description

      t.timestamps null: false
    end
  end
end
