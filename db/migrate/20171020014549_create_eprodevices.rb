class CreateEprodevices < ActiveRecord::Migration
  def change
    create_table :eprodevices do |t|
      t.string :service, null: false
      t.string :assettag, null: false
      t.string :project
      t.string :model, null: false
      t.string :requestedby
      t.date :buildby
      t.text :notes

      t.timestamps null: false
    end
  end
end
