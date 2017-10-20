class AddStatusToEprodevices < ActiveRecord::Migration
  def change
    add_column :eprodevices, :status, :integer, null: false
  end
end
