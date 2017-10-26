class ChangeNameToOtherdevices < ActiveRecord::Migration
  def change
    add_index :otherdevices, :assettag, unique: true
  end
end
