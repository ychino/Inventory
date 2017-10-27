require 'csv'

class Otherdevice < ActiveRecord::Base
  validates :assettag, uniqueness: true
  
  KINDS = [ 'Other']
  MODELS = [ 'Surface Pro 3', 'Surface Pro 4', 'Dell Latitude E6440', 'Samsung Galaxy SC-01D', 'Others']
  STATUSES = [ 'Build Requested', 'In Field', 'Stocked', 'Repair Needed']
  
   def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      obj = new
      obj.attributes = row.to_hash.slice(*updatable_attributes)
      
      unless Otherdevice.exists?(assettag: row["assettag"])
        obj.save!
      end
    end
  end
  
  def self.updatable_attributes
    ["service", "project", "assettag", "model", "siteid", "requestedby", "buildby", "notes", "created_at", "updated_at", "status"]
  end
  
end