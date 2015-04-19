json.array!(@class_gs) do |class_g|
  json.extract! class_g, :id, :col1, :col2
  json.url class_g_url(class_g, format: :json)
end
