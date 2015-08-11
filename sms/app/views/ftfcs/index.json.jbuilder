json.array!(@ftfcs) do |ftfc|
  json.extract! ftfc, :cid, :description, :status
  json.url ftfc_url(ftfc, format: :json)
end