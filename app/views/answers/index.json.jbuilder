json.array!(@answers) do |answer|
  json.extract! answer, :id, :name, :position, :user_id, :game_id
  json.url answer_url(answer, format: :json)
end
