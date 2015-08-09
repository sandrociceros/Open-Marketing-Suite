class Forms::Submission < ActiveRecord::Base
  belongs_to :set
  has_many :responses
end
