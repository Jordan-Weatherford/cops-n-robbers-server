Rails.application.routes.draw do
 get 'getData' => 'locations#getData'
 post 'sendData' => 'locations#sendData'
 post 'hiderFlag' => 'locations#hiderFlag'
 get 'reset' => 'locations#reset'
end
