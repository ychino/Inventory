class AddProjectsToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :project, :string
  end
end
