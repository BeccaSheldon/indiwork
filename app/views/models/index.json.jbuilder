json.array!(@models) do |model|
  json.extract! model, :Category, :name, :desc
  json.url model_url(model, format: :json)
end
