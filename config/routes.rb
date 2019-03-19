Rails.application.routes.draw do


  root 'datas#about'
  resources :datas, only: [:index, :new, :create] do
    collection do
      get :about
      get :sample
    end
  end

  devise_for :users
  resources :users, only: %i(show)

end
