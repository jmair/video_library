json.array!(@producers) do |producer|
  json.extract! producer, :id, :first, :last
  json.url producer_url(producer, format: :json)
end
