class AddColumnDevices < ActiveRecord::Migration
  def change
    add_column :devices, :siteid, :integer
    add_column :devices, :stockedfor, :string
  end
end
