class ChangeStringKindOfDevices < ActiveRecord::Migration
  def change
     # [形式] change_column(テーブル名, カラム名, データタイプ, オプション)
    change_column :devices, :kind, :string
  end
end
