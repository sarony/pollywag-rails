PollywogRanchRailsRuby003::Application.routes.draw do
  resources :ponds
  resources :frogs do
    resources :tadpoles
  end
  
  resources :tadpoles, :except => :new

  post '/tadpoles/:id' => 'tadpoles#evolve'

end
