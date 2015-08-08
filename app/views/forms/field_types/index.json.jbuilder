json.array!(@forms_field_types) do |forms_field_type|
  json.extract! forms_field_type, :id, :name, :shortcode, :description
  json.url forms_field_type_url(forms_field_type, format: :json)
end
