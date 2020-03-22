Rails.application.routes.draw do
  root to: "pages#home"
  
  get 'styles', to: "pages#styles"

  get 'pages/styles', to: "pages#styles"

  get '/choices', to: "pages#choices"

  resources :needs do
    resources :lists, only: [:show, :update] do
      resources :items, only: [:create]
    end
  end

  resources :items, only: [:update, :delete]
end
