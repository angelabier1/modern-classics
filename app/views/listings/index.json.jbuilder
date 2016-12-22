json.array!(@listings) do |listing|
  json.extract! listing, :id, :year, :make, :model, :body_style, :mileage, :transmission, :condition, :fuel_economy, :engine_size, :cylinders, :power, :fuel_type, :vin, :overview
  json.url listing_url(listing, format: :json)
end
