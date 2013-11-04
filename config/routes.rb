PollywogRanchRailsRuby003::Application.routes.draw do
  resources :ponds
  resources :frogs
  resources :tadpoles

  get '/frogs/:id/tadpoles/new' => 'tadpoles#new'
  post '/tadpoles/:id' => 'tadpoles#evolve'

 
end
