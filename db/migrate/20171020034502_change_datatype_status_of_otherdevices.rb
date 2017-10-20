class ChangeDatatypeStatusOfOtherdevices < ActiveRecord::Migration
  def change
    change_column :otherdevices, :status, :string, null: true
  end
end
