Rails.application.routes.draw do
  post :login , to: 'auth#login'
  resources :users, only: [:create, :update, :show]
  get :get_balance, to: 'users#get_balance'
  get :withdraw, to: 'users#withdraw'
  resources :invoices, only: [:create, :show, :update]
  resources :bets, only: [:create, :show, :update]
  get :start_game, to: 'bets#start_game'
  get :pay_invoice, to: 'bets#pay_invoice'
end
