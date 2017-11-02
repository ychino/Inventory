class ChangeDatatypeSiteidOfDevices < ActiveRecord::Migration
  def change
    change_column :devices, :siteid, :string
  end
end
