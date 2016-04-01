json.array!(@customers) do |customer|
  json.extract! customer, :id, :customer_id, :name, :email_address, :address
  json.url customer_url(customer, format: :json)
end
