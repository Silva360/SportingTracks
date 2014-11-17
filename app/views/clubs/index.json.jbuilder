json.array!(@clubs) do |club|
  json.extract! club, :id, :type, :name, :members, :description, :activity_id, :place_id
  json.url club_url(club, format: :json)
end
