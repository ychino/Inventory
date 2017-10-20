class Eprodevice < ActiveRecord::Base
  KINDS = [ 'ePRO' ]
  MODELS = [ 'Samsung Galaxy SC-01D']
  STATUSES = [ 'Build Requested', 'In Field', 'Stocked', 'Repair Needed']
end
