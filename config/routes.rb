Opentheatre::Application.routes.draw do

  namespace :admin do
    get '/', :to => 'dashboard#show'
    resources :movies do
      collection do
        post :search
      end
    end
  end

  resources :movies

end
