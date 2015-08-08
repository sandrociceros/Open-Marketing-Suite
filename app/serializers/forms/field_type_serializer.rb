class Forms::FieldTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :shortcode, :description
end
