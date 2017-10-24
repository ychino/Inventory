class RemoveStockedforFromDevices < ActiveRecord::Migration
  def change
    remove_column :devices, :stockedfor
  end
end
