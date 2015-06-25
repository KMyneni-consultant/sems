json.array!(@facilities) do |facility|
  json.extract! facility, :fid, :pid, :facility_name
  json.url facility_url(facility, format: :json)
end