class DashboardController < ApplicationController
  def index
    @devices = Device.all + Eprodevice.all + Otherdevice.all
    @rsdevices = Device.all
    @eprodevices = Eprodevice.all
    @otherdevices = Otherdevice.all
    
    @rsrequesteddevices = Device.where(status: 'Build Requested')
    @rsinfielddevices = Device.where(status: 'In Field')
    @rsstockeddevices = Device.where(status: 'In Stock')  
    @rsrepairneededdevices = Device.where(status: 'Repair Needed')   
    
    @eprorequesteddevices = Eprodevice.where(status: 'Build Requested')
    @eproinfielddevices = Eprodevice.where(status: 'In Field')
    @eprostockeddevices = Eprodevice.where(status: 'In Stock')  
    @eprorepairneededdevices = Eprodevice.where(status: 'Repair Needed')   
    
    @otherrequesteddevices = Otherdevice.where(status: 'Build Requested')
    @otherinfielddevices = Otherdevice.where(status: 'In Field')
    @otherstockeddevices = Otherdevice.where(status: 'In Stock')  
    @otherrepairneededdevices = Otherdevice.where(status: 'Repair Needed')   
  end
end
