json.array!(@eprodevices) do |eprodevice|
  json.extract! eprodevice, :id, :service, :assettag, :project, :model, :requestedby, :buildby, :notes
  json.url eprodevice_url(eprodevice, format: :json)
end
