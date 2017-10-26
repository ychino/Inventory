require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(Name Volume Model Manufacturer Notes CreatedAt UpdateAt)
  csv << csv_column_names
  @items.each do |item|
    csv_column_values = [
      item.name,
      item.volume,
      item.model,
      item.manufacturer,
      item.notes,
      item.created_at,
      item.updated_at,
    ]
    csv << csv_column_values
  end
end