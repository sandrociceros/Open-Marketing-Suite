class Forms::QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :position
  has_one :forms_set
  has_one :forms_field_type
end
