json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :age, :breed, :spade_neutered, :adopted
  json.url cat_url(cat, format: :json)
end
