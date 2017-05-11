class LocationsController < ApplicationController
    def getData
        render :text => "get data route"
    end

    def sendData
        render :text => "send data route"
    end
end
