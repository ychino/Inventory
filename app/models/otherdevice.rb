class Otherdevice < ActiveRecord::Base
  validates :assettag, uniqueness: true
  
  KINDS = [ 'Other']
  MODELS = [ 'Surface Pro 3', 'Surface Pro 4', 'Dell Latitude E6440', 'Samsung Galaxy SC-01D', 'Others']
  STATUSES = [ 'Build Requested', 'In Field', 'Stocked', 'Repair Needed']
end
