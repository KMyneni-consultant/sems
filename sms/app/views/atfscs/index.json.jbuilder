json.array!(@atfscs) do |atfsc|
  json.extract! atfsc, :cid, :scid, :description, :bundle, :status
  json.url atfsc_url(atfsc, format: :json)
end