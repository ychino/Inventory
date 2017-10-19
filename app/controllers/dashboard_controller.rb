class DashboardController < ApplicationController
  def index
    @devices = Device.all
    @rsdevices = Device.where(kind: 'RS')
    @eprodevices = Device.where(kind: 'ePRO')
    @otherdevices = Device.where(kind: 'Other')
    
    @rsrequesteddevices = Device.where(kind: 'RS', status: 'Build Requested')
    @rsinfielddevices = Device.where(kind: 'RS', status: 'In Field')
    @rsstockeddevices = Device.where(kind: 'RS', status: 'Stocked')  
    @rsrepairneededdevices = Device.where(kind: 'RS', status: 'Repair Needed')   
  end
end
