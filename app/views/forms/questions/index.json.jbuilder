json.array!(@forms_questions) do |forms_question|
  json.extract! forms_question, :id, :title, :position, :forms_set_id, :forms_field_type_id
  json.url forms_question_url(forms_question, format: :json)
end
