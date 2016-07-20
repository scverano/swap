json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :is_active, :user_id, :category_id, :ad_type_id, :status_id, :condition_id, :region_id, :province_id, :municipality_id
  json.url product_url(product, format: :json)
end
