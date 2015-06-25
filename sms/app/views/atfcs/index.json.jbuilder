json.array!(@atfcs) do |atfc|
  json.extract! atfc, :cid, :description, :bundle, :status
  json.url atfc_url(atfc, format: :json)
end