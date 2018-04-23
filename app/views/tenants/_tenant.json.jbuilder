json.extract! tenant, :id, :tenant_name, :email, :password, :is_active, :deleted_at, :address_id, :contact_id, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
