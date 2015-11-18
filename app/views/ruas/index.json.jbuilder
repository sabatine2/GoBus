json.array!(@ruas) do |rua|
  json.extract! rua, :id, :nome
  json.url rua_url(rua, format: :json)
end
