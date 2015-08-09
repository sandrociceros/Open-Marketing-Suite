json.array!(@forms_responses) do |forms_response|
  json.extract! forms_response, :id, :question_id, :set_id, :response_text, :response_boolean, :response_selection
  json.url forms_response_url(forms_response, format: :json)
end
