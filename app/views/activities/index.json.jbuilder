json.array!(@activities) do |activity|
  json.extract! activity, :id, :activityType, :date, :title, :user_id, :place_id
  json.url activity_url(activity, format: :json)
end
