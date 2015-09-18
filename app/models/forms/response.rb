class Forms::Response < ActiveRecord::Base
  belongs_to :field_type
  belongs_to :submission, inverse_of: :responses
  belongs_to :question, inverse_of: :responses
end
