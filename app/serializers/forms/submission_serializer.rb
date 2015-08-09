class Forms::SubmissionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :set
end
