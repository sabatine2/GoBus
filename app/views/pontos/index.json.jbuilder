json.array!(@pontos) do |ponto|
  json.extract! ponto, :id, :latitude, :longitude, :rua_id
  json.url ponto_url(ponto, format: :json)
end
