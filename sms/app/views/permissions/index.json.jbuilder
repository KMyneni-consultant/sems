json.array!(@permissions) do |permission|
  json.extract! permission, :id, :perm_name, :perm_code
  json.url permission_url(permission, format: :json)
end
