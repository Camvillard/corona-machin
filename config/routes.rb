Rails.application.routes.draw do
  root to: "pages#home"
  get 'pages/styles', to: "pages#styles"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
