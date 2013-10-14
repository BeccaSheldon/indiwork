Urdb::Application.routes.draw do
  resources :movies do
    resources :showitmes
  end
  root 'movies#index'
end
