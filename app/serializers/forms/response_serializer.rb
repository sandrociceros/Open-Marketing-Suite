class Forms::ResponseSerializer < ActiveModel::Serializer
  attributes :id, :response_text
  has_one :forms_question
  has_one :forms_set
  has_one :forms_field_type
end
