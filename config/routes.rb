Rails.application.routes.draw do

  resources :parks

  get '/park/random' => 'parks#random'

end
