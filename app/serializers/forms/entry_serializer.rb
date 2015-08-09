class Forms::EntrySerializer < ActiveModel::Serializer
  attributes :id
  has_one :set
end
