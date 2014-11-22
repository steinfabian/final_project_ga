json.array!(@products) do |product|
  json.extract! product, :id, :kind, :name, :size, :order_id, :image, :price
  json.url product_url(product, format: :json)
end
