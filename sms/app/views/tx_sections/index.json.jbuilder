json.array!(@tx_sections) do |tx_section|
  json.extract! tx_section, :sid, :section_name, :fid, :pid
  json.url tx_section_url(tx_section, format: :json)
end