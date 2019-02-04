Rails.application.routes.draw do
    
    root to: 'pages#home'
    
    get 'pages/landing' => 'pages#landing'
    get 'pages/impressum' => 'pages#impressum'
    get 'pages/termsAndConditions' => 'pages#termsAndConditions'
    get 'pages/applicationProcessing' => 'pages#applicationProcessing'
    get 'pages/guidelines' => 'pages#guidelines'

    resources :insurances
    get 'insurances/index' => 'insurances#index'

    devise_for :users,
               path:        '',
               path_names:  {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
               controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
    
    resources :users, only: [:show]
    
end