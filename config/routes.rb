Rails.application.routes.draw do
  root to: "pages#home"

  get 'styles', to: "pages#styles"

  get 'pages/styles', to: "pages#styles"

  get '/choices', to: "pages#choices"

  resources :demands
  resources :homework_demands
  resources :social_demands
  resources :other_demands

  resources :errand_demands do
    resources :lists, only: [:show, :update] do
      resources :items, only: [:create]
    end
  end

  resources :items, only: [:update, :delete]
end