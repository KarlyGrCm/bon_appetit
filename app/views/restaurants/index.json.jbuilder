json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :phone, :rfc, :description, :category_id
  json.url restaurant_url(restaurant, format: :json)
end
