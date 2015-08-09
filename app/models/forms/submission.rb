class Forms::Submission < ActiveRecord::Base
  belongs_to :set
  has_many :responses
  accepts_nested_attributes_for :responses
end
