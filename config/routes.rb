Rails.application.routes.draw do
  root to: "pages#home"
  get 'styles', to: "pages#styles"
  get 'choices', to: "pages#choices", as: :choices
end
