json.extract! supplier, :id, :name, :phone, :email, :address, :postal_code, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
