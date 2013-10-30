json.array!(@products) do |product|
  json.extract! product, :name, :shortcode, :bid_price, :final_price, :intro, :factory, :spec, :unit
  json.url product_url(product, format: :json)
end
