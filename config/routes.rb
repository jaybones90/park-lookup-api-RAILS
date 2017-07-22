Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :parks
    end
  end


  get '/api/v1/park/random' => 'api/v1/parks#random'

end
