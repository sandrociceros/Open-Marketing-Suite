class Forms::ResponseSerializer < ActiveModel::Serializer
  attributes :id, :value
  has_one :question
  has_one :field_type
  has_one :submission
end
