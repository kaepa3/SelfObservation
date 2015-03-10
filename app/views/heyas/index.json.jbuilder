json.array!(@heyas) do |heya|
  json.extract! heya, :id, :ondo, :shitudo
  json.url heya_url(heya, format: :json)
end
