require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(Project StartDate Carrier PhoneNumber DeviceID MonthlyFee CreatedAt UpdateAt Status)
  csv << csv_column_names
  @simcards.each do |simcard|
    csv_column_values = [
      simcard.project,
      simcard.startdate,
      simcard.carrier,
      simcard.phonenumber,
      simcard.deviceid,
      simcard.monthlyfee,
      simcard.created_at,
      simcard.updated_at,
      simcard.status
    ]
    csv << csv_column_values
  end
end