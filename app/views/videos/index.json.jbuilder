json.array!(@videos) do |video|
  json.extract! video, :id, :title, :description, :producer_id_id
  json.url video_url(video, format: :json)
end
