json.array!(@rota) do |rotum|
  json.extract! rotum, :id, :destino, :origem
  json.url rotum_url(rotum, format: :json)
end
