class ChangeNameToDevices < ActiveRecord::Migration
  def change
    add_index :devices, :name, unique: true
  end
end
