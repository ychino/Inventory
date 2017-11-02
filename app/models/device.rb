require 'csv'

class Device < ActiveRecord::Base
  validates :name, uniqueness: true
  
  KINDS = [ 'RS' ]
  MODELS = [ 'Surface Pro 3', 'Surface Pro 4', 'Dell Latitude E6440']
  STATUSES = [ 'Build Requested', 'In Field', 'In Stock', 'Repair Needed']
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      obj = new
      obj.attributes = row.to_hash.slice(*updatable_attributes)
      
      unless Device.exists?(name: row["name"])
        obj.save!
      end
    end
  end
  
  def self.updatable_attributes
    ["kind", "project", "name", "model", "siteid", "builtby", "requestedby", "created_at", "updated_at", "status"]
  end
end
