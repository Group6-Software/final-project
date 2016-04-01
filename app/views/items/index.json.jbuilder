json.array!(@items) do |item|
  json.extract! item, :id, :item_id, :name, :cost
  json.url item_url(item, format: :json)
end
