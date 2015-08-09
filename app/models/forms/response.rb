class Forms::Response < ActiveRecord::Base
  belongs_to :set
  belongs_to :question
end
