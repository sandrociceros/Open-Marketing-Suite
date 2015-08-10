class Forms::Submission < ActiveRecord::Base
  belongs_to :set
  has_many :responses
  accepts_nested_attributes_for :responses
  def build_responses
    questions = self.set.questions
    questions.each do |q|
      self.responses.build({
        :submission => self,
        :question => q,
        :field_type => q.field_type
      })
    end #End questions loop
    self.responses
  end #End method
end #End Model
