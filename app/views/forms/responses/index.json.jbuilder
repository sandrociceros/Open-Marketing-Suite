json.array!(@forms_responses) do |forms_response|
  json.extract! forms_response, :id, :forms_question_id, :forms_set_id, :response_text, :forms_field_type_id
  json.url forms_response_url(forms_response, format: :json)
end
