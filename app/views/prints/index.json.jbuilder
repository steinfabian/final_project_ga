json.array!(@prints) do |print|
  json.extract! print, :id, :name, :thumbnail, :image
  json.url print_url(print, format: :json)
end
