class Forms::QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :position
  has_one :set
  has_one :field_type
end
