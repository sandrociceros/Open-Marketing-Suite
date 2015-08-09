class Forms::Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :field_type
  belongs_to :submission
end
