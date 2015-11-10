json.array!(@admins) do |admin|
  json.extract! admin, :id, :name, :username
  json.url admin_url(admin, format: :json)
end
