Rails.application.routes.draw do
  root to: "pages#home"
  get 'styles', to: "pages#styles"
  get 'pages/styles', to: "pages#styles"
  get '/choices', to: "pages#choices"
  get '/success', to: "demands#success_page", as: :success
  get '/safety_first', to: "pages#safety_first", as: :safety


  resources :demands do
    post '/take_demand', to: "demands#take_a_demand", as: :take_demand
  end

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
