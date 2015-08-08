class Forms::Question < ActiveRecord::Base
  belongs_to :set
  belongs_to :field_type
end
