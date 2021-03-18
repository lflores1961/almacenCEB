json.extract! product, :id, :code, :name, :brand, :description, :unit, :package, :units_per_package, :last_price, :created_at, :updated_at
json.url product_url(product, format: :json)
