json.array!(@customisations) do |customisation|
  json.extract! customisation, :id, :product_id, :part_id, :print_id, :style_id
  json.url customisation_url(customisation, format: :json)
end
