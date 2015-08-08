class Forms::Question < ActiveRecord::Base
  belongs_to :forms_set
  belongs_to :forms_field_type
end
