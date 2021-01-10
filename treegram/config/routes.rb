Rails.application.routes.draw do

  get '/' => 'home#index'
  resources :users do
    resources :photos do
      resources :comments
    end
    resources :follows
  end

  resources :tags, only: [:create, :destroy]
  get '/log-in' => "sessions#new"
  post '/log-in' => "sessions#create"
  get '/log-out' => "sessions#destroy", as: :log_out

end
