require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(Service Project AsseTag Model SiteID BuildDateBy RequestedBy Notes CreatedAt UpdateAt Status)
  csv << csv_column_names
  @devices.each do |device|
    csv_column_values = [
      device.kind,
      device.project,
      device.name,
      device.model,
      device.siteid,
      device.builtby,
      device.requestedby,
      device.description,
      device.created_at,
      device.updated_at,
      device.status
    ]
    csv << csv_column_values
  end
end