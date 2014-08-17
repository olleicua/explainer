json.array!(@definitions) do |definition|
  json.extract! definition, :id, :term, :content
  json.url definition_url(definition, format: :json)
end
