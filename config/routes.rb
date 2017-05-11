Rails.application.routes.draw do
 get 'getData' => 'locations#getData'
 post 'sendData' => 'locations#sendData'
end
