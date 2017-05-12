class LocationsController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    @@coordinates = Hash.new
    @@hiderFlag = ""

    def getData
        render :json => @@coordinates
    end

    def sendData
        @@coordinates[params[:key][0]] = [params[:key][1], params[:key][2]]
        render :json => {"status" => "true"}
    end

    def hiderFlag
        if @@hiderFlag.empty?
            @@hiderFlag = params[:key]
            render :json => {"status" => true}
        else
            render :json => {"status" => false}
        end
    end

    def reset
        @@coordinates.clear
        @@hiderFlag = ""
        render :json => {"status" => true}
    end

    def getFoxId
        render :json => {"foxId" => @@hiderFlag}
    end
end
