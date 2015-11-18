json.array!(@questions) do |question|
  json.extract! question, :id, :name, :position, :user_id, :game_id
  json.url question_url(question, format: :json)
end
