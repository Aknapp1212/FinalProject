json.array!(@universities) do |university|
  json.extract! university, :id, :name, :user_id
  json.url university_url(university, format: :json)
end
