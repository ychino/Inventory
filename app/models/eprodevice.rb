class Eprodevice < ActiveRecord::Base
  validates :assettag, uniqueness: true
  
  KINDS = [ 'ePRO' ]
  MODELS = [ 'Samsung Galaxy SC-01D']
  STATUSES = [ 'Build Requested', 'In Field', 'Stocked', 'Repair Needed']
end
