json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :status, :total_price, :timestamps
  json.url order_url(order, format: :json)
end
