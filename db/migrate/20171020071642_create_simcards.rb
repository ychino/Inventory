class CreateSimcards < ActiveRecord::Migration
  def change
    create_table :simcards do |t|
      t.string :project
      t.date :startdate
      t.string :carrier
      t.string :phonenumber
      t.string :deviceid
      t.integer :monthlyfee
      t.string :status

      t.timestamps null: false
    end
  end
end
