class LocationsController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    @@coordinates = Hash.new

    def getData
        render :json => @@coordinates
    end

    def sendData
        @@coordinates[params[:key][0]] = [params[:key][1], params[:key][2]]
        render :json => {"status" => "true"}
    end
end
