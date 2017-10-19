class AddDetailsToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :status, :string
    add_column :devices, :builtby, :date
    add_column :devices, :model, :string
    add_column :devices, :requestedby, :string
  end
end
