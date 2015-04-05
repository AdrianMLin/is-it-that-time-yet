json.array!(@bobs) do |bob|
  json.extract! bob, :id
  json.url bob_url(bob, format: :json)
end
