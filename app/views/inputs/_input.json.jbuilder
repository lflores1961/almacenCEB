json.extract! input, :id, :input_date, :invoice, :price, :quantity, :location, :product_id, :supplier_id, :user_id, :created_at, :updated_at
json.url input_url(input, format: :json)
