class ChangeImeiToEprodevices < ActiveRecord::Migration
  def change
    change_column :eprodevices, :imei, :text
  end
end
