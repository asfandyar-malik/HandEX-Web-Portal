Rails.application.routes.draw do

  root to: 'pages#home'

  get 'pages/impressum' => 'pages#impressum'
  get 'pages/termsAndConditions' => 'pages#termsAndConditions'

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
             controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  resources :users, only: [:show]

  resources :hokuments do
    member do
      get 'work'
    end
  end

  resources :tradeinfos do
    member do
      get 'exportinformation'
      get 'importinformation'
      get 'thank'
      get 'eligibility'
      get 'accepted'
      get 'rejected'
      get 'sucessfullyprocessed'
      get 'insuranceresult'
    end

    resources :buyers, only: [:create, :destroy, :new, :update]
    resources :financials, only: [:create, :destroy, :new, :update]
    resources :insurances, only: [:create, :destroy, :new, :update]
    resources :bankaccounts, only: [:create, :destroy, :new, :update]

    get 'buyers/index' => 'buyers#index'
    get 'financials/index' => 'financials#index'
    get 'insurances/index' => 'insurances#index'
    get 'bankaccounts/index' => 'bankaccounts#index'

  end
end