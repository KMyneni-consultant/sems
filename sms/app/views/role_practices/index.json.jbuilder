json.array!(@role_practices) do |role_practice|
  json.extract! role_practice, :rid, :pid, :role_name
  json.url role_practice_url(role_practice, format: :json)
end