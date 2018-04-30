Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  devise_scope :user do
    get 'users/sign_up', to: 'users/registrations#new'
    get 'users/sign_in', to: 'users/sessions#new'
    delete 'users/sign_out', to: 'users/sessions#destroy'
  end 

  devise_scope :user do
    root to: 'home#index'
  end 

end
