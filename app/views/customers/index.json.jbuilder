json.array!(@customers) do |customer|
  json.extract! customer, :id, :email, :password_digest, :first_name, :last_name, :address
  json.url customer_url(customer, format: :json)
end
