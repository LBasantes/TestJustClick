json.extract! store, :id, :Name, :Street, :Number, :ZipCode, :Country, :Products, :created_at, :updated_at
json.url store_url(store, format: :json)
