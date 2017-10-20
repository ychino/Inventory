json.array!(@simcards) do |simcard|
  json.extract! simcard, :id, :project, :startdate, :carrier, :phonenumber, :deviceid, :monthlyfee, :status
  json.url simcard_url(simcard, format: :json)
end
