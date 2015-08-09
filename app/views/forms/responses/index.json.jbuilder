json.array!(@forms_responses) do |forms_response|
  json.extract! forms_response, :id, :question_id, :value, :field_type_id, :submission_id
  json.url forms_response_url(forms_response, format: :json)
end
