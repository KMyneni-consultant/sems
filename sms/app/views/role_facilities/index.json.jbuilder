json.array!(@role_facilities) do |role_facility|
  json.extract! role_facility, :rid, :fid, :pid, :role_name
  json.url role_facility_url(role_facility, format: :json)
end