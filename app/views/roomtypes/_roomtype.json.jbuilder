json.extract! roomtype, :id, :name, :description, :roomsize_m2, :price_per_night, :created_at, :updated_at
json.url roomtype_url(roomtype, format: :json)
