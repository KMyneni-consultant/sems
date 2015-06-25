json.array!(@menu_links) do |menu_link|
  json.extract! menu_link, :lid, :linkname, :bundle
  json.url menu_link_url(menu_link, format: :json)
end