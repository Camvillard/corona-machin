Rails.application.routes.draw do
  get 'items/create'
  root to: "pages#home"

  get 'styles', to: "pages#styles"

  get 'pages/styles', to: "pages#styles"

  get '/choices', to: "pages#choices"

  get'/demands', to: "pages#demands"

  resources :homework_demands
  resources :social_demands
  resources :other_demands

  resources :errand_demands do
    resources :items, only: [:create]
    resources :lists, only: [:show, :update] do
      resources :items, only: [:create]
    end
  end

  resources :items, only: [:update, :delete]
end
