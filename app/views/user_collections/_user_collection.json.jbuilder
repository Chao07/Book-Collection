json.extract! user_collection, :id, :user_id, :book_id, :created_at, :updated_at
json.url user_collection_url(user_collection, format: :json)
