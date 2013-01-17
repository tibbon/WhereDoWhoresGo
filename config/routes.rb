Wherewhoresgo::Application.routes.draw do
  root to: 'whores#index'
  resources :whores, only: [:index, :create]
end
