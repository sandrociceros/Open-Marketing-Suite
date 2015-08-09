json.array!(@forms_questions) do |forms_question|
  json.extract! forms_question, :id, :title, :position, :set_id, :field_type_id, :placeholder_text
  json.url forms_question_url(forms_question, format: :json)
end
