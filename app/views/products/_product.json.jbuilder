json.extract! product, :id, :Name, :Color, :Category, :Size, :Price, :Store, :created_at, :updated_at
json.url product_url(product, format: :json)
