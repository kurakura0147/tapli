Rails.application.routes.draw do

  root 'datas#index'
  resources :datas, only: %i(index)
end
