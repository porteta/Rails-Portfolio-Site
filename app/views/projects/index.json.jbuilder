json.array!(@projects) do |project|
  json.extract! project, :text, :permalink
  json.url project_url(project, format: :json)
end
