json.array!(@outlines) do |outline|
  json.extract! outline, :id, :name, :description, :price
  json.url outline_url(outline, format: :json)
end
