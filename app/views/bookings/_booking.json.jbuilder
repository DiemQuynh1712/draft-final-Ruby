json.extract! booking, :id, :name, :date_of_birth, :phone_number, :gmail, :check_in_date, :number_of_nights, :num_adults, :num_children, :roomtype_id, :service, :created_at, :updated_at
json.url booking_url(booking, format: :json)
