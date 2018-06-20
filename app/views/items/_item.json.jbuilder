json.extract! item, :id, :ingredient_id, :recipe_id, :created_at, :updated_at
json.url item_url(item, format: :json)
