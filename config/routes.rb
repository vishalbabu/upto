Rails.application.routes.draw do
  root "welcome#index"

  namespace :api, path: "/"  do
    resources :users, except: [:new, :edit]
  end
end
