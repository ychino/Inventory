class AddImeiToEprodevices < ActiveRecord::Migration
  def change
    add_column :eprodevices, :imei, :string, :null => false
  end
end
