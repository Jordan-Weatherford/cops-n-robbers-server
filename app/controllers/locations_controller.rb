class LocationsController < ApplicationController
    def getData
        coordinates = {
            "test" => "something",
            "test2" => "ldjfalksdj"
        }
        render :json => coordinates
    end

    def sendData
    end
end
