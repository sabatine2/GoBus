json.array!(@onibuses) do |onibus|
  json.extract! onibus, :id, :placa, :ativo, :linha_id
  json.url onibus_url(onibus, format: :json)
end
