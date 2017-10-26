class AddSiteidToOtherdevices < ActiveRecord::Migration
  def change
    add_column :otherdevices, :siteid, :integer
  end
end
