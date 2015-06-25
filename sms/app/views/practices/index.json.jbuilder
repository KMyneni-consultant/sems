json.array!(@practices) do |practice|
  json.extract! practice, :pid, :practice_name
  json.url practice_url(practice, format: :json)
end