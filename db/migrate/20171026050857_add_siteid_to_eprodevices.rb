class AddSiteidToEprodevices < ActiveRecord::Migration
  def change
    add_column :eprodevices, :siteid, :integer
  end
end
