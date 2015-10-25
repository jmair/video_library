json.array!(@actors) do |actor|
  json.extract! actor, :id, :first, :last
  json.url actor_url(actor, format: :json)
end
