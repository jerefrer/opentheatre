Opentheatre::Application.routes.draw do

  namespace :admin do
    get '/', :to => 'dashboard#show'
    resources :movies
  end

  resources :movies

end
