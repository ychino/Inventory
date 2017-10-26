class ChangeNameToEprodevices < ActiveRecord::Migration
  def change
    add_index :eprodevices, :assettag, unique: true
  end
end
