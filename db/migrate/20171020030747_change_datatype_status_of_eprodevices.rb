class ChangeDatatypeStatusOfEprodevices < ActiveRecord::Migration
  def change
     change_column :eprodevices, :status, :string, null: true
  end
end
