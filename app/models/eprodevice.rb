require 'csv'

class Eprodevice < ActiveRecord::Base
  validates :assettag, uniqueness: true
  
  KINDS = [ 'ePRO' ]
  MODELS = [ 'Samsung Galaxy SC-01D']
  STATUSES = [ 'Build Requested', 'In Field', 'In Stock', 'Repair Needed']
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      obj = new
      obj.attributes = row.to_hash.slice(*updatable_attributes)
      
      unless Eprodevice.exists?(assettag: row["imei"])
        obj.save!
      end
    end
  end
  
  def self.updatable_attributes
    ["service", "project", "imei", "assettag", "model", "siteid", "requestedby", "buildby", "notes", "created_at", "updated_at", "status"]
  end
  
end