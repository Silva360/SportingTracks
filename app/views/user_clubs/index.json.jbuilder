json.array!(@user_clubs) do |user_club|
  json.extract! user_club, :id, :user_id, :club_id, :join_date
  json.url user_club_url(user_club, format: :json)
end
