json.array!(@otherdevices) do |otherdevice|
  json.extract! otherdevice, :id, :service, :assettag, :project, :model, :requestedby, :buildby, :notes
  json.url otherdevice_url(otherdevice, format: :json)
end
