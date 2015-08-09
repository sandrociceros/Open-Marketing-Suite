json.array!(@forms_entries) do |forms_entry|
  json.extract! forms_entry, :id, :set_id
  json.url forms_entry_url(forms_entry, format: :json)
end
