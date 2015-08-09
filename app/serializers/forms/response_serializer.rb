class Forms::ResponseSerializer < ActiveModel::Serializer
  attributes :id, :response_text, :response_boolean, :response_selection
  has_one :question
  has_one :set
end
