json.array!(@regexes) do |regex|
  json.extract! regex, :id, :name, :regex
  json.url regex_url(regex, format: :json)
end
