class AddStatusToOtherdevices < ActiveRecord::Migration
  def change
    add_column :otherdevices, :status, :integer, null: false
  end
end
