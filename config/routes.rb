Rails.application.routes.draw do

  devise_for :users

  root 'datas#about'
  resources :datas, only: %i(index new create) do
    collection do
      get :about
      get :sample
    end
  end

  resources :users, only: %i(show)

end
