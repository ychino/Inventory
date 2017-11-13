require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(Service Project IMEI AsseTag Model SiteID RequestedBy BuildDateBy Notes CreatedAt UpdateAt Status)
  csv << csv_column_names
  @eprodevices.each do |eprodevice|
    csv_column_values = [
      eprodevice.service,
      eprodevice.project,
      eprodevice.imei,
      eprodevice.assettag,
      eprodevice.model,
      eprodevice.siteid,
      eprodevice.requestedby,
      eprodevice.buildby,
      eprodevice.notes,
      eprodevice.created_at,
      eprodevice.updated_at,
      eprodevice.status
    ]
    csv << csv_column_values
  end
end