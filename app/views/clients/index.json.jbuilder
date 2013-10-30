json.array!(@clients) do |client|
  json.extract! client, :name, :grade, :tel, :website, :address, :employee, :turnover, :intro
  json.url client_url(client, format: :json)
end
