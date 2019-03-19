Rails.application.routes.draw do

  devise_for :users
  root 'datas#about'
  resources :datas, only: %i(index show) do
    collection do
      get :about
      get :sample
    end
  end

end
