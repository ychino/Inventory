json.array!(@items) do |item|
  json.extract! item, :id, :name, :volume, :notes
  json.url item_url(item, format: :json)
end
