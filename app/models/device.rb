class Device < ActiveRecord::Base
  KINDS = [ 'RS', 'ePRO', 'Other']
  MODELS = [ 'Surface Pro 3', 'Surface Pro 4', 'Dell Latitude E6440', 'Samsung Galaxy SC-01D']
  STATUSES = [ 'Build Requested', 'In Field', 'Stocked', 'Repair Needed']
end
