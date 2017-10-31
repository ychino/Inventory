class ChangeDatatypeSiteidOfEprodevices < ActiveRecord::Migration
  def change
    change_column :eprodevices, :siteid, :string
  end
end
