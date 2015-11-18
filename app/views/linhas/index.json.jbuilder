json.array!(@linhas) do |linha|
  json.extract! linha, :id, :numero, :descricao
  json.url linha_url(linha, format: :json)
end
