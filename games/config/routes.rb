Games::Application.routes.draw do
   get "/rps" , controller: 'rps', action: 'homerps'
   post "/rps" , controller: 'rps', action: 'choose'

   get "/poker", controller: 'poker', action: 'homepoker'

   get "/dice", controller: 'dice', action: 'homedice'
   get "/dice/roll", controller: 'dice', action: 'rollFirst'
   post "/dice/roll", controller: 'dice', action: 'rollMore'
end
