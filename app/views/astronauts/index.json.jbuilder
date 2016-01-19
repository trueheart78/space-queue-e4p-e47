json.array!(@astronauts) do |astronaut|
  json.extract! astronaut, :id, :name, :image
  json.url astronaut_url(astronaut, format: :json)
end
