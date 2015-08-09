class Forms::ResponseSerializer < ActiveModel::Serializer
  attributes :id, :response_text
  has_one :question
  has_one :field_type
  has_one :entry
end
