json.array!(@orders) do |order|
  json.extract! order, :id, :order_id, :customer_id, :item_id, :placed_at, :status
  json.url order_url(order, format: :json)
end
