class AddRuleToFormsQuestion < ActiveRecord::Migration
  def change
    add_reference :forms_questions, :regex, index: true
    add_foreign_key :forms_questions, :regexes
  end
end
