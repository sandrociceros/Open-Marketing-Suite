json.array!(@forms_sets) do |forms_set|
  json.extract! forms_set, :id, :name, :description
  json.url forms_set_url(forms_set, format: :json)
end
