class Device < ActiveRecord::Base
  KINDS = [ 'RS' ]
  MODELS = [ 'Surface Pro 3', 'Surface Pro 4', 'Dell Latitude E6440']
  STATUSES = [ 'Build Requested', 'In Field', 'Stocked', 'Repair Needed']
end
