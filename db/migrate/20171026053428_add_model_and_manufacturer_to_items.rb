class AddModelAndManufacturerToItems < ActiveRecord::Migration
  def change
    add_column :items, :model, :string
    add_column :items, :manufacturer, :string
  end
end
