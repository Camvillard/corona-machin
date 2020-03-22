Rails.application.routes.draw do
  root to: "pages#home"
  
  get 'pages/styles', to: "pages#styles"

  get '/choices', to: "pages#choices"

  resources :need do
    resources :list, only: [:show, :update] do
      resources :item, only: [:create]
    end
  end

  resources :item, only: [:update, :delete]
end
