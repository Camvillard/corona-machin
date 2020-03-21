Rails.application.routes.draw do
  root to: "pages#home"
  
  get 'pages/styles', to: "pages#styles"

  get '/choices', to "pages#choices"

  ressources :need do
    ressources :list, only[:show, :edit, :update, :delete]
  end
end
