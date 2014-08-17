json.array!(@explanations) do |explanation|
  json.extract! explanation, :id, :content, :statement_id
  json.url explanation_url(explanation, format: :json)
end
