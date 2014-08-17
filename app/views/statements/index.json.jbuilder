json.array!(@statements) do |statement|
  json.extract! statement, :id, :title, :content
  json.url statement_url(statement, format: :json)
end
