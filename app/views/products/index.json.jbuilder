json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :active, :category_id, :ad_type_id, :status_id, :condition_id, :user_id
  json.url product_url(product, format: :json)
end
