json.array!(@menus) do |menu|
  json.extract! menu, :mid, :menuname, :bundle
  json.url menu_url(menu, format: :json)
end