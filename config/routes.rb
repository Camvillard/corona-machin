Rails.application.routes.draw do
  root to: "pages#home"
  get 'styles', to: "pages#styles"
end
