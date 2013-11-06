PollywogRanchRailsRuby003::Application.routes.draw do
  resources :ponds
  resources :frogs do #=> /frogs/:id
    resources :tadpoles #=> /tadpoles/new
  end

  # /frogs/:id/tadpoles/new
  
  resources :tadpoles, :except => :new

  post '/tadpoles/:id' => 'tadpoles#evolve'

  # get '/frogs/:id' => 'frogs#show', :tk => :frog

end
