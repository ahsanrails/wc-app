json.array!(@cdns) do |cdn|
  json.extract! cdn, :id, :name, :email
  json.url cdn_url(cdn, format: :json)
end
