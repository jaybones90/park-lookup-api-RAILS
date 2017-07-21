Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :parks
    end
  end


  get '/park/random' => 'parks#random'

end
