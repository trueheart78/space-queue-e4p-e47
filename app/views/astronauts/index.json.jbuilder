json.array!(@astronauts) do |astronaut|
  json.extract! astronaut, :id, :name, :image_url
  json.url astronaut_url(astronaut, format: :json)
end
