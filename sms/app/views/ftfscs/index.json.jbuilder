json.array!(@ftfscs) do |ftfsc|
  json.extract! ftfsc, :ftfc_id, :scid, :description, :status
  json.url ftfsc_url(ftfsc, format: :json)
end