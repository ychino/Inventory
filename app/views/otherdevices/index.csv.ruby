require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(Service Project AsseTag Model SiteID RequestedBy BuildDateBy Notes CreatedAt UpdateAt Status)
  csv << csv_column_names
  @otherdevices.each do |otherdevice|
    csv_column_values = [
      otherdevice.service,
      otherdevice.project,
      otherdevice.assettag,
      otherdevice.model,
      otherdevice.siteid,
      otherdevice.requestedby,
      otherdevice.buildby,
      otherdevice.notes,
      otherdevice.created_at,
      otherdevice.updated_at,
      otherdevice.status
    ]
    csv << csv_column_values
  end
end