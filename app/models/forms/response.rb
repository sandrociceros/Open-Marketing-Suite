class Forms::Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :set
end
