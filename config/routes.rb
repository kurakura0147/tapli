Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'datas#about'
  resources :datas, only: %i(index new create show edit update destroy) do
    collection do
      get :about
      get :sample
    end
  end

  resources :users, only: %i(show)

end
