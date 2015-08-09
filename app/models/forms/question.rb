class Forms::Question < ActiveRecord::Base
  belongs_to :set
  belongs_to :field_type
  has_many :responses

  def build_response
    self.responses.new({:set => self.set, :question => self})
  end
end
