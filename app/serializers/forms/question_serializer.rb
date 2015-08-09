class Forms::QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :position, :placeholder_text
  has_one :set
  has_one :field_type
end
