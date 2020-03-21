Rails.application.routes.draw do
  root to: "pages#home"
  
  get 'pages/styles', to: "pages#styles"

  get '/choices', to: "pages#choices"

  resources :need do
    resources :list, only: [:show, :edit, :update, :delete]
  end
end
