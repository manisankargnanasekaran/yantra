json.extract! address, :id, :address_line1, :address_line2, :address_line3, :city, :state, :country, :postal_code, :created_at, :updated_at
json.url address_url(address, format: :json)
