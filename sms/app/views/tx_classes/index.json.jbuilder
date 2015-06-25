json.array!(@tx_classes) do |tx_class|
  json.extract! tx_class, :cid, :class_name, :fid, :pid
  json.url tx_class_url(tx_class, format: :json)
end