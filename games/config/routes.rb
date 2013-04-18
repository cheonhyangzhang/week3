Games::Application.routes.draw do
   get "/rps" , controller: 'rps', action: 'homerps'
   post "/rps" , controller: 'rps', action: 'choose'

   get "/poker", controller: 'poker', action: 'homepoker'
end
