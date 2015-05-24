json.array!(@dishes) do |dish|
  json.extract! dish, :id, :name, :restaurant_id, :description, :price
  json.url dish_url(dish, format: :json)
end
