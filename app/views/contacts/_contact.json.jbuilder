json.extract! contact, :id, :email, :phone_no1, :phone_no2, :fax, :social_network, :created_at, :updated_at
json.url contact_url(contact, format: :json)
