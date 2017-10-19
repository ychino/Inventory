class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :volume, null: false
      t.text :notes

      t.timestamps null: false
    end
  end
end
